// Copyright 2020 lanxin
#pragma once
#include "base_type.h"
#include "loc_params.h"
#include "log_utils.h"
#include "robot_exception_type.h"

namespace algo {
class MotionAccumulator;
class MonteCarloLocalization;
class Timer;
class AES;
struct LaserFrameBuffer;
}  // namespace algo
struct RobotLocalizationParams;

class CInstancAlgoLocalization {
 public:
  /**
   * @brief Construct a new CInstancAlgoLocalization object
   *
   * @param log_callback 记日志的回调
   */
  CInstancAlgoLocalization(LogoutStrProc log_callback);
  ~CInstancAlgoLocalization();
  /**
   * @brief 设置参数
   *
   * @param params
   */
  void ISetParams(const RobotLocParams& params);
  /**
   * @brief 设置地图
   *
   * @param map_path 地图文件路径，"/home/xxxx.pgm"后缀不需要
   * 只需要给入"/home/xxxx"既可
   * @return int
   */
  int IUpdateMap(const std::string& map_path);
  /**
   * @brief 重定位位姿更新
   *
   * @param pose_cov_vec 位姿+噪声，噪声决定了重定位搜索范围
   */
  void IUpdateRelocPose(
      const std::vector<algo::RobotPoseWithCov>& pose_cov_vec);
  /**
   * @brief
   * 开机自动重定位位姿更新
   *
   * @param loc_info
   */
  void IUpdateHistoryLocInfo(const HistoryLocInfo& loc_info);
  /**
   * @brief 更新里程计
   *
   * @param odom_state
   */
  void IUpdateOdometry(const algo::RobotState& odom_state);
  /**
   * @brief 更新前激光
   *
   * @param p_laser
   */
  void IUpdateLaser(const algo::LaserItemPtr& p_laser);
  /**
   * @brief 更新后激光
   *
   * @param p_laser
   */
  void IUpdateAuxiliaryLaser(const algo::LaserItemPtr& p_laser);
  /**
   * @brief 定位处理函数
   *
   */
  void Process();
  /**
   * @brief 获取定位值
   *
   * @return algo::RobotState
   */
  algo::RobotState IReportRobotState();
  /**
   * @brief 重定位是否成功
   *
   * @return true
   * @return false
   */
  bool IGlobLocDone();
  /**
   * @brief 异常获取
   *
   * @return LocExcStatus
   */
  LocExcStatus IReportException();
  /**
   * @brief 获取定位得分
   *
   * @return double
   */
  double IReportWeight();
  static void ILog2Video(const std::string& map_name,
                         const std::string& log_path, const bool show);

  int IUpdateMap(const algo::PointListTrust& map_points);
  bool INeedProcess();
  void IGenerateReflectorMapPoints(std::vector<::algo::Point>& points);
  void IGetReflectorMapPoints(std::vector<std::vector<::algo::Point>>& points);
  void ISetReflectorMapPoints(
      const std::vector<std::vector<::algo::Point>>& points);
  void ISetOpenReflectorLoc(bool flag);
  RobotLocalizationParams* m_params;

  //   COMMON_CB_FUNCS

 private:
  // std::string m_log;
  algo::MonteCarloLocalization* m_MCL;
  algo::MotionAccumulator* m_odomAccumulator;
  algo::Timer* m_timer;
  algo::AES* m_aes;

  algo::LaserFrameBuffer* m_curLaserFrame;
  HistoryLocInfo m_historyInfo;
  std::vector<algo::RobotPoseWithCov> m_relocVec;
  algo::RobotState m_curOdomState;
  algo::RobotPose m_odomPose;
  algo::RobotSpeed m_odomSpeed;

  algo::RobotPose m_odomCor2Pose;
  algo::RobotPose m_curPose;
  algo::RobotState m_curState;
  double m_weight;
  bool m_needProcess;
  bool m_glbLocDone;

  bool m_initDone;
  bool m_startFlag;

  LocExcStatus m_exception;

  LogoutStrProc m_logCallback;

  void IUpdateRelocPose(const algo::RobotPoseWithCov& robot_pose_cov);

  bool isNearPose(const algo::OrientedPoint& suggest_pose);

  bool autoReloc();
};
