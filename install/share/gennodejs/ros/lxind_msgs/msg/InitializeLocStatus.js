// Auto-generated. Do not edit!

// (in-package lxind_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let InitializeLoc = require('./InitializeLoc.js');

//-----------------------------------------------------------

class InitializeLocStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isSuccess = null;
      this.weight = null;
      this.relocInfo = null;
    }
    else {
      if (initObj.hasOwnProperty('isSuccess')) {
        this.isSuccess = initObj.isSuccess
      }
      else {
        this.isSuccess = false;
      }
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = 0;
      }
      if (initObj.hasOwnProperty('relocInfo')) {
        this.relocInfo = initObj.relocInfo
      }
      else {
        this.relocInfo = new InitializeLoc();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitializeLocStatus
    // Serialize message field [isSuccess]
    bufferOffset = _serializer.bool(obj.isSuccess, buffer, bufferOffset);
    // Serialize message field [weight]
    bufferOffset = _serializer.int32(obj.weight, buffer, bufferOffset);
    // Serialize message field [relocInfo]
    bufferOffset = InitializeLoc.serialize(obj.relocInfo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitializeLocStatus
    let len;
    let data = new InitializeLocStatus(null);
    // Deserialize message field [isSuccess]
    data.isSuccess = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [weight]
    data.weight = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [relocInfo]
    data.relocInfo = InitializeLoc.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += InitializeLoc.getMessageSize(object.relocInfo);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/InitializeLocStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d6cace685863e5309090db1004f6f1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isSuccess
    int32 weight
    InitializeLoc relocInfo
    ================================================================================
    MSG: lxind_msgs/InitializeLoc
    Header header
    string name
    float32 x
    float32 y
    float32 theta
    bool is_startup_reloc
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InitializeLocStatus(null);
    if (msg.isSuccess !== undefined) {
      resolved.isSuccess = msg.isSuccess;
    }
    else {
      resolved.isSuccess = false
    }

    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = 0
    }

    if (msg.relocInfo !== undefined) {
      resolved.relocInfo = InitializeLoc.Resolve(msg.relocInfo)
    }
    else {
      resolved.relocInfo = new InitializeLoc()
    }

    return resolved;
    }
};

module.exports = InitializeLocStatus;
