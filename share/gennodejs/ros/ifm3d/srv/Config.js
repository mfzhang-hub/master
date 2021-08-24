// Auto-generated. Do not edit!

// (in-package ifm3d.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ConfigRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.json = null;
    }
    else {
      if (initObj.hasOwnProperty('json')) {
        this.json = initObj.json
      }
      else {
        this.json = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConfigRequest
    // Serialize message field [json]
    bufferOffset = _serializer.string(obj.json, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConfigRequest
    let len;
    let data = new ConfigRequest(null);
    // Deserialize message field [json]
    data.json = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.json.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ifm3d/ConfigRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f859d01b8e3757110b53b06e823ec597';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string json
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConfigRequest(null);
    if (msg.json !== undefined) {
      resolved.json = msg.json;
    }
    else {
      resolved.json = ''
    }

    return resolved;
    }
};

class ConfigResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConfigResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConfigResponse
    let len;
    let data = new ConfigResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.msg.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ifm3d/ConfigResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e50a755d48be526edaee6d407b363d64';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string msg
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConfigResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ConfigRequest,
  Response: ConfigResponse,
  md5sum() { return '2ae3559b462614ae239cd0372f7a82af'; },
  datatype() { return 'ifm3d/Config'; }
};
