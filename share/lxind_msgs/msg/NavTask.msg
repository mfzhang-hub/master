int64 task_id
uint32 pri_task_cmd

lxind_msgs/RobotPose init_state
lxind_msgs/RobotPose target_state

int32 target_id
string target_name
float32 tol_dist
float32 tol_angle
uint8 to_goal_mode

bool enable_oa
float32 max_speed
float32 min_turn_radius

lxind_msgs/PathPoint[] fixed_path

# Robot spec task
uint8 load_mode
uint8 direction

# precloc
float32 prec_dist

string extra_info