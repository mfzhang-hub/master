// Auto-generated. Do not edit!

// (in-package lxind_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Exception = require('./Exception.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Exceptions {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.exceptions = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('exceptions')) {
        this.exceptions = initObj.exceptions
      }
      else {
        this.exceptions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Exceptions
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [exceptions]
    // Serialize the length for message field [exceptions]
    bufferOffset = _serializer.uint32(obj.exceptions.length, buffer, bufferOffset);
    obj.exceptions.forEach((val) => {
      bufferOffset = Exception.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Exceptions
    let len;
    let data = new Exceptions(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [exceptions]
    // Deserialize array length for message field [exceptions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.exceptions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.exceptions[i] = Exception.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.exceptions.forEach((val) => {
      length += Exception.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/Exceptions';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1ee62720c4eba0ee889e14ffdbd8cf5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    lxind_msgs/Exception[] exceptions
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: lxind_msgs/Exception
    Header header
    
    string module_name
    int32 exc_code
    string description
    
    ## 视觉定位异常
    ## 0: 正常
    ## 1: 相机启动失败
    ## 2: 图像数据为空
    ## 3: 图像数据较老，当前时间减去图像发送时间超过100ms
    ## 4: 长时间(3s)没有图像数据
    ## 5: 长时间(3s)没有里程计数据
    ## 6: 图像过曝或欠曝
    ## 7: 地图数据读取失败
    ## 8: 特征检测服务异常
    ## 9: 定位初始化失败
    ## 10: 长时间(10s)特征检测失败
    ## 11: 偏离路径，长距离(10m)无特征
    ## 12: 重定位超时(10s)，定位丢失
    ## 999: 其他异常
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Exceptions(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.exceptions !== undefined) {
      resolved.exceptions = new Array(msg.exceptions.length);
      for (let i = 0; i < resolved.exceptions.length; ++i) {
        resolved.exceptions[i] = Exception.Resolve(msg.exceptions[i]);
      }
    }
    else {
      resolved.exceptions = []
    }

    return resolved;
    }
};

module.exports = Exceptions;
