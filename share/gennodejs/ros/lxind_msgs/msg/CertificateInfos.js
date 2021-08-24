// Auto-generated. Do not edit!

// (in-package lxind_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CertificateInfo = require('./CertificateInfo.js');

//-----------------------------------------------------------

class CertificateInfos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.infos = null;
    }
    else {
      if (initObj.hasOwnProperty('infos')) {
        this.infos = initObj.infos
      }
      else {
        this.infos = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CertificateInfos
    // Serialize message field [infos]
    // Serialize the length for message field [infos]
    bufferOffset = _serializer.uint32(obj.infos.length, buffer, bufferOffset);
    obj.infos.forEach((val) => {
      bufferOffset = CertificateInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CertificateInfos
    let len;
    let data = new CertificateInfos(null);
    // Deserialize message field [infos]
    // Deserialize array length for message field [infos]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.infos = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.infos[i] = CertificateInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.infos.forEach((val) => {
      length += CertificateInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/CertificateInfos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86a25173dc2ad721a4f1ce4f2a9ec294';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    lxind_msgs/CertificateInfo[] infos
    ================================================================================
    MSG: lxind_msgs/CertificateInfo
    string info_type
    string info_detail
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CertificateInfos(null);
    if (msg.infos !== undefined) {
      resolved.infos = new Array(msg.infos.length);
      for (let i = 0; i < resolved.infos.length; ++i) {
        resolved.infos[i] = CertificateInfo.Resolve(msg.infos[i]);
      }
    }
    else {
      resolved.infos = []
    }

    return resolved;
    }
};

module.exports = CertificateInfos;
