// Auto-generated. Do not edit!

// (in-package lxind_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SendCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendCmdRequest
    // Serialize message field [cmd]
    bufferOffset = _serializer.string(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendCmdRequest
    let len;
    let data = new SendCmdRequest(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cmd.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lxind_msgs/SendCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43a54fa49066cddcf148717d9d4a6353';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string cmd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendCmdRequest(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = ''
    }

    return resolved;
    }
};

class SendCmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendCmdResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendCmdResponse
    let len;
    let data = new SendCmdResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lxind_msgs/SendCmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendCmdResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SendCmdRequest,
  Response: SendCmdResponse,
  md5sum() { return '43a54fa49066cddcf148717d9d4a6353'; },
  datatype() { return 'lxind_msgs/SendCmd'; }
};
