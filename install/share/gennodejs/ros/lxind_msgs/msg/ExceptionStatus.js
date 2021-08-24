// Auto-generated. Do not edit!

// (in-package lxind_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ExceptionStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.isShow = null;
      this.warnMode = null;
      this.warnid = null;
      this.name = null;
      this.prompt = null;
      this.leftWarnText = null;
      this.middleWarnText = null;
      this.rightWarnText = null;
      this.leftWarnId = null;
      this.middleWarnId = null;
      this.rightWarnId = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('isShow')) {
        this.isShow = initObj.isShow
      }
      else {
        this.isShow = false;
      }
      if (initObj.hasOwnProperty('warnMode')) {
        this.warnMode = initObj.warnMode
      }
      else {
        this.warnMode = 0;
      }
      if (initObj.hasOwnProperty('warnid')) {
        this.warnid = initObj.warnid
      }
      else {
        this.warnid = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('prompt')) {
        this.prompt = initObj.prompt
      }
      else {
        this.prompt = '';
      }
      if (initObj.hasOwnProperty('leftWarnText')) {
        this.leftWarnText = initObj.leftWarnText
      }
      else {
        this.leftWarnText = '';
      }
      if (initObj.hasOwnProperty('middleWarnText')) {
        this.middleWarnText = initObj.middleWarnText
      }
      else {
        this.middleWarnText = '';
      }
      if (initObj.hasOwnProperty('rightWarnText')) {
        this.rightWarnText = initObj.rightWarnText
      }
      else {
        this.rightWarnText = '';
      }
      if (initObj.hasOwnProperty('leftWarnId')) {
        this.leftWarnId = initObj.leftWarnId
      }
      else {
        this.leftWarnId = 0;
      }
      if (initObj.hasOwnProperty('middleWarnId')) {
        this.middleWarnId = initObj.middleWarnId
      }
      else {
        this.middleWarnId = 0;
      }
      if (initObj.hasOwnProperty('rightWarnId')) {
        this.rightWarnId = initObj.rightWarnId
      }
      else {
        this.rightWarnId = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExceptionStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [isShow]
    bufferOffset = _serializer.bool(obj.isShow, buffer, bufferOffset);
    // Serialize message field [warnMode]
    bufferOffset = _serializer.uint8(obj.warnMode, buffer, bufferOffset);
    // Serialize message field [warnid]
    bufferOffset = _serializer.uint8(obj.warnid, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [prompt]
    bufferOffset = _serializer.string(obj.prompt, buffer, bufferOffset);
    // Serialize message field [leftWarnText]
    bufferOffset = _serializer.string(obj.leftWarnText, buffer, bufferOffset);
    // Serialize message field [middleWarnText]
    bufferOffset = _serializer.string(obj.middleWarnText, buffer, bufferOffset);
    // Serialize message field [rightWarnText]
    bufferOffset = _serializer.string(obj.rightWarnText, buffer, bufferOffset);
    // Serialize message field [leftWarnId]
    bufferOffset = _serializer.uint8(obj.leftWarnId, buffer, bufferOffset);
    // Serialize message field [middleWarnId]
    bufferOffset = _serializer.uint8(obj.middleWarnId, buffer, bufferOffset);
    // Serialize message field [rightWarnId]
    bufferOffset = _serializer.uint8(obj.rightWarnId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExceptionStatus
    let len;
    let data = new ExceptionStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [isShow]
    data.isShow = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [warnMode]
    data.warnMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [warnid]
    data.warnid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [prompt]
    data.prompt = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [leftWarnText]
    data.leftWarnText = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [middleWarnText]
    data.middleWarnText = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rightWarnText]
    data.rightWarnText = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [leftWarnId]
    data.leftWarnId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [middleWarnId]
    data.middleWarnId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rightWarnId]
    data.rightWarnId = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.name.length;
    length += object.prompt.length;
    length += object.leftWarnText.length;
    length += object.middleWarnText.length;
    length += object.rightWarnText.length;
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/ExceptionStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fbfdb4c2bece4216f1e5efbbd716245c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    bool  isShow
    uint8  warnMode
    uint8  warnid
    string name
    string prompt
    
    string leftWarnText
    string middleWarnText
    string rightWarnText
    uint8  leftWarnId
    uint8  middleWarnId
    uint8  rightWarnId
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
    const resolved = new ExceptionStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.isShow !== undefined) {
      resolved.isShow = msg.isShow;
    }
    else {
      resolved.isShow = false
    }

    if (msg.warnMode !== undefined) {
      resolved.warnMode = msg.warnMode;
    }
    else {
      resolved.warnMode = 0
    }

    if (msg.warnid !== undefined) {
      resolved.warnid = msg.warnid;
    }
    else {
      resolved.warnid = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.prompt !== undefined) {
      resolved.prompt = msg.prompt;
    }
    else {
      resolved.prompt = ''
    }

    if (msg.leftWarnText !== undefined) {
      resolved.leftWarnText = msg.leftWarnText;
    }
    else {
      resolved.leftWarnText = ''
    }

    if (msg.middleWarnText !== undefined) {
      resolved.middleWarnText = msg.middleWarnText;
    }
    else {
      resolved.middleWarnText = ''
    }

    if (msg.rightWarnText !== undefined) {
      resolved.rightWarnText = msg.rightWarnText;
    }
    else {
      resolved.rightWarnText = ''
    }

    if (msg.leftWarnId !== undefined) {
      resolved.leftWarnId = msg.leftWarnId;
    }
    else {
      resolved.leftWarnId = 0
    }

    if (msg.middleWarnId !== undefined) {
      resolved.middleWarnId = msg.middleWarnId;
    }
    else {
      resolved.middleWarnId = 0
    }

    if (msg.rightWarnId !== undefined) {
      resolved.rightWarnId = msg.rightWarnId;
    }
    else {
      resolved.rightWarnId = 0
    }

    return resolved;
    }
};

module.exports = ExceptionStatus;
