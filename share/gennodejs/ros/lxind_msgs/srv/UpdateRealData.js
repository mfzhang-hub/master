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

class UpdateRealDataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dataJson = null;
    }
    else {
      if (initObj.hasOwnProperty('dataJson')) {
        this.dataJson = initObj.dataJson
      }
      else {
        this.dataJson = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateRealDataRequest
    // Serialize message field [dataJson]
    bufferOffset = _serializer.string(obj.dataJson, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateRealDataRequest
    let len;
    let data = new UpdateRealDataRequest(null);
    // Deserialize message field [dataJson]
    data.dataJson = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.dataJson.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lxind_msgs/UpdateRealDataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c3c2532ef978f111ed3b999d7cf539e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string dataJson
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateRealDataRequest(null);
    if (msg.dataJson !== undefined) {
      resolved.dataJson = msg.dataJson;
    }
    else {
      resolved.dataJson = ''
    }

    return resolved;
    }
};

class UpdateRealDataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isSuccess = null;
    }
    else {
      if (initObj.hasOwnProperty('isSuccess')) {
        this.isSuccess = initObj.isSuccess
      }
      else {
        this.isSuccess = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateRealDataResponse
    // Serialize message field [isSuccess]
    bufferOffset = _serializer.bool(obj.isSuccess, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateRealDataResponse
    let len;
    let data = new UpdateRealDataResponse(null);
    // Deserialize message field [isSuccess]
    data.isSuccess = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lxind_msgs/UpdateRealDataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7dbd1de57ef8fd16c2d4ef28e12e701';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isSuccess
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateRealDataResponse(null);
    if (msg.isSuccess !== undefined) {
      resolved.isSuccess = msg.isSuccess;
    }
    else {
      resolved.isSuccess = false
    }

    return resolved;
    }
};

module.exports = {
  Request: UpdateRealDataRequest,
  Response: UpdateRealDataResponse,
  md5sum() { return '36ec269d8e7b5ed35b8fdfab67c704d0'; },
  datatype() { return 'lxind_msgs/UpdateRealData'; }
};
