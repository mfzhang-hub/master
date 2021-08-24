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

class GetRealDataRequest {
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
    // Serializes a message object of type GetRealDataRequest
    // Serialize message field [dataJson]
    bufferOffset = _serializer.string(obj.dataJson, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRealDataRequest
    let len;
    let data = new GetRealDataRequest(null);
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
    return 'lxind_msgs/GetRealDataRequest';
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
    const resolved = new GetRealDataRequest(null);
    if (msg.dataJson !== undefined) {
      resolved.dataJson = msg.dataJson;
    }
    else {
      resolved.dataJson = ''
    }

    return resolved;
    }
};

class GetRealDataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dataJsonRet = null;
    }
    else {
      if (initObj.hasOwnProperty('dataJsonRet')) {
        this.dataJsonRet = initObj.dataJsonRet
      }
      else {
        this.dataJsonRet = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRealDataResponse
    // Serialize message field [dataJsonRet]
    bufferOffset = _serializer.string(obj.dataJsonRet, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRealDataResponse
    let len;
    let data = new GetRealDataResponse(null);
    // Deserialize message field [dataJsonRet]
    data.dataJsonRet = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.dataJsonRet.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lxind_msgs/GetRealDataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db7968917bcf5bfd23216e01e142e813';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string dataJsonRet
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRealDataResponse(null);
    if (msg.dataJsonRet !== undefined) {
      resolved.dataJsonRet = msg.dataJsonRet;
    }
    else {
      resolved.dataJsonRet = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetRealDataRequest,
  Response: GetRealDataResponse,
  md5sum() { return '569dabf260434c7ed4d7ddae51e72989'; },
  datatype() { return 'lxind_msgs/GetRealData'; }
};
