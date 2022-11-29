"The test shall be conducted according to the latest version. If there is no reply after the latest version of the instruction is issued, please confirm whether it is a new version of RFID module."

发送定义：
Head     Len    Address    Cmd     Data     Check
0xA0    1Byte    1Byte    1Byte   NBytes    1Byte
参数说明
Head 数据包头，每包数据均以 0xA0 开始。
Len 数据包从 Len 后面开始的字节数，不包含 Len本身。
Address 读写器地址。一般地址从 0～254(0xFE)，255（0xFF）为公用地址。读写器接收自身地址和公用地址的命令。
Cmd 命令码。
Data 命令参数。
Check 校验和，除校验和本身外所有字节的校验和。

返回定义：
Head     Len    Address    Cmd     Data     Check
0xA0    1Byte    1Byte    1Byte   NBytes    1Byte
参数说明
Head 数据包头，每包数据均以 0xA0 开始。
Len 数据包从 Len 后面开始的字节数，不包含 Len 本身。
Address 读写器自身的地址。
Data 读写器返回的数据。
Check 校验和，除校验和本身外所有字节的校验和。


"custom":
     {
      "T260":ttyS3,
      "T261":ttyS0,
     },
      "agreement":
{

const unsigned char check_old_edition[5] = {0xA0,0x03,0x00,0x72,0xeb}; //旧版本检测 
const unsigned char check_new_edition[5] = {0xA0,0x03,0x01,0x72,0xea}; //新版本检测   
const unsigned char send_old_instructions[6] = {0xA0,0x04,0x00,0x89,0x01,0xD2);//读取旧版本标签数据信息
const unsigned char send_new_instructions[6] = {0xA0,0x04,0x01,0x89,0x01,0xD1);//读取新版本标签数据信息 
const unsigned char send_sanduoTrigger[8] = {0x40,0x06,0xee,0x01,0x00,0x00,0x00,0xcb);//读取新版本标签数据信息
const unsigned char read new power[5] = {0xA0,0x03,0x01,0x77,0xE5}; //读取当前功率
const unsigned char set power 26[6] = {0xA0,0x04,0x01,0x76,0x1A,0xCB}; //设置功率为26dBm
const unsigned char set power 25[6] = {0xA0,0x04,0x01,0x76,0x19,0xCC}; //设置功率为25dBm
const unsigned char set power 24[6] = {0xA0,0x04,0x01,0x76,0x18,0xCD}; //设置功率为24dBm
const unsigned char set power 23[6] = {0xA0,0x04,0x01,0x76,0x17,0xCE}; //设置功率为23dBm
const unsigned char set power 22[6] = {0xA0,0x04,0x01,0x76,0x16,0xCF}; //设置功率为22dBm
const unsigned char set power 21[6] = {0xA0,0x04,0x01,0x76,0x15,0xD0}; //设置功率为21dBm
const unsigned char set power 20[6] = {0xA0,0x04,0x01,0x76,0x14,0xD1}; //设置功率为20dBm
const unsigned char set power 19[6] = {0xA0,0x04,0x01,0x76,0x13,0xD2}; //设置功率为19dBm
const unsigned char set power 18[6] = {0xA0,0x04,0x01,0x76,0x12,0xD3}; //设置功率为18dBm
const unsigned char set power 10[6] = {0xA0,0x04,0x01,0x76,0x0A,0xDB}; //设置功率为10dBm

},
"test":

    {
    "Version_Query":
      "send: "A0 03 01 72 ea"
      "Error_return" : ""
      "success_return_win" : " A0 05 01 72 01 09 DE "
      "success_return_ubuntu" : " 00000000: df ee f3 97 f7 f3 f7 f7   13 b3 f3 53 b6 52 d6 "
    },
    {
    "power":
    "send: "A0 03 00 77 E5"
    "success_return_win" : "  A0 04 01 77 17 CD "
    "success_return_ubuntu" : "00000000: df ee f3 97 f7 f3 f7 f7   13 13 f3 53 a9 e5 eb"
    "Error_return" : "" 
    },
    {
    "Set_power23":
    "send: "A0 04 01 76 17 CE"
    "success_return_win": " A0 04 01 76 10 D5 "
    "success_return_ubuntu": "00000000: df ee f3 77 f3 f3 d7 f3   13 33 f7 d3 73 f3 73 eb  00000010: ca d6 "
    "Error_return" : "A0 04 * 76 ErrorCode *" 
    },

"ErrorCode":

{
  "0x10": "command_success" // 命令成功完成
"0x11": "command_fail" // 命令执行失败
"0x20" "mcu_reset_error" // CPU 复位错误
"0x21" "cw_on_error" // 打开 CW 错误
"0x22" "antenna_missing_error" // 天线未连接
"0x23" "write_flash_error" // 写 Flash 错误
"0x24" "read_flash_error" // 读 Flash 错误
"0x25" "set_output_power_error" // 设置发射功率错误
"0x31" "tag_inventory_error" // 盘存标签错误
"0x32" tag_read_error" // 读标签错误
"0x33" "tag_write_error" // 写标签错误
"0x34" "tag_lock_error" // 锁定标签错误
"0x35" "tag_kill_error" // 灭活标签错误
"0x36" "no_tag_error" // 无可操作标签错误
"0x37" "inventory_ok_but_access_fail" // 成功盘存但访问失败
"0x38" "buffer_is_empty_error" // 缓存为空
"0x40" "access_or_password_error" // 访问标签错误或访问密码错误
"0x41" "parameter_invalid" // 无效的参数
"0x42" "parameter_invalid_wordCnt_too_long wordCnt" // 参数超过规定长度
"0x43" "parameter_invalid_membank_out_of_range" MemBank // 参数超出范围
"0x44" "parameter_invalid_lock_region_out_of_range" Lock // 数据区参数超出范围
"0x45" "parameter_invalid_lock_action_out_of_range" LockType // 参数超出范围
"0x46" "parameter_reader_address_invalid" // 读写器地址无效
"0x47" "parameter_invalid_antenna_id_out_of_range Antenna_id" // 超出范围
"0x48" "parameter_invalid_output_power_out_of_range" // 输出功率参数超出范围
"0x49" "parameter_invalid_frequency_region_out_of_range" // 射频规范区域参数超出范围 
"0x4A" "parameter_invalid_baudrate_out_of_range" // 波特率参数超出范围
"0x4B" "parameter_beeper_mode_out_of_range" // 蜂鸣器设置参数超出范围
"0x4C" "parameter_epc_match_len_too_long" // EPC 匹配长度越界
"0x4D" "arameter_epc_match_len_error" // EPC 匹配长度错误
"0x4E" "parameter_invalid_epc_match_mode" // EPC 匹配参数超出范围
"0x4F" "parameter_invalid_frequency_range" // 频率范围设置参数错误
"0x50" "ail_to_get_RN16_from_tag" // 无法接收标签的 RN16
"0x51" "parameter_invalid_drm_mode" // DRM 设置参数错误
"0x52" "pll_lock_fail" // PLL 不能锁定
"0x53" "rf_chip_fail_to_response" // 射频芯片无响应
"0x54" "fail_to_achieve_desired_output_power" // 输出达不到指定的输出功率
"0x55" "copyright_authentication_fail" // 版权认证未通过
"0x56" "spectrum_regulation_error" // 频谱规范设置错误
"0x57" "output_power_too_low" // 输出功率过低
}
    