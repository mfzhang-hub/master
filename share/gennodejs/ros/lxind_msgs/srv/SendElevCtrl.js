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

class SendElevCtrlRequest {
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
        this.cmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendElevCtrlRequest
    // Serialize message field [cmd]
    bufferOffset = _serializer.uint8(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendElevCtrlRequest
    let len;
    let data = new SendElevCtrlRequest(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lxind_msgs/SendElevCtrlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a8403831377bf4e356597f9718a77e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ELEV_NOACTION = 0
    uint8 ELEV_UP = 1
    uint8 ELEV_DOWN = 2
    uint8 ELEV_STOP = 3
    uint8 ELEV_CLEAR = 4
    uint8 ELEV_RESET = 5
    
    uint8 cmd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendElevCtrlRequest(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    return resolved;
    }
};

// Constants for message
SendElevCtrlRequest.Constants = {
  ELEV_NOACTION: 0,
  ELEV_UP: 1,
  ELEV_DOWN: 2,
  ELEV_STOP: 3,
  ELEV_CLEAR: 4,
  ELEV_RESET: 5,
}

class SendElevCtrlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('ret_msg')) {
        this.ret_msg = initObj.ret_msg
      }
      else {
        this.ret_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendElevCtrlResponse
    // Serialize message field [ret_msg]
    bufferOffset = _serializer.string(obj.ret_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendElevCtrlResponse
    let len;
    let data = new SendElevCtrlResponse(null);
    // Deserialize message field [ret_msg]
    data.ret_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ret_msg.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lxind_msgs/SendElevCtrlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fccccc533ea484677a8d17d860146522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ret_msg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendElevCtrlResponse(null);
    if (msg.ret_msg !== undefined) {
      resolved.ret_msg = msg.ret_msg;
    }
    else {
      resolved.ret_msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SendElevCtrlRequest,
  Response: SendElevCtrlResponse,
  md5sum() { return 'f5f151d913835fc1ca9ebf1643791e6c'; },
  datatype() { return 'lxind_msgs/SendElevCtrl'; }
};
