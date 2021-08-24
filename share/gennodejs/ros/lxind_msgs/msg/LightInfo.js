// Auto-generated. Do not edit!

// (in-package lxind_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LightInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.light_code = null;
    }
    else {
      if (initObj.hasOwnProperty('light_code')) {
        this.light_code = initObj.light_code
      }
      else {
        this.light_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LightInfo
    // Serialize message field [light_code]
    bufferOffset = _serializer.uint8(obj.light_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LightInfo
    let len;
    let data = new LightInfo(null);
    // Deserialize message field [light_code]
    data.light_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/LightInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04bae1331d5d0ba1a60c262ecb8137fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LIGHT_ALARM = 7
    uint8 LIGHT_CHARGING = 8
    uint8 LIGHT_NORMAL = 9
    uint8 LIGHT_AWAITING = 10
    
    
    uint8 light_code
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LightInfo(null);
    if (msg.light_code !== undefined) {
      resolved.light_code = msg.light_code;
    }
    else {
      resolved.light_code = 0
    }

    return resolved;
    }
};

// Constants for message
LightInfo.Constants = {
  LIGHT_ALARM: 7,
  LIGHT_CHARGING: 8,
  LIGHT_NORMAL: 9,
  LIGHT_AWAITING: 10,
}

module.exports = LightInfo;
