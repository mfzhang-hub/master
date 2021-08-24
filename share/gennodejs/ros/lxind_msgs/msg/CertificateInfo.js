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

class CertificateInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.info_type = null;
      this.info_detail = null;
    }
    else {
      if (initObj.hasOwnProperty('info_type')) {
        this.info_type = initObj.info_type
      }
      else {
        this.info_type = '';
      }
      if (initObj.hasOwnProperty('info_detail')) {
        this.info_detail = initObj.info_detail
      }
      else {
        this.info_detail = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CertificateInfo
    // Serialize message field [info_type]
    bufferOffset = _serializer.string(obj.info_type, buffer, bufferOffset);
    // Serialize message field [info_detail]
    bufferOffset = _serializer.string(obj.info_detail, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CertificateInfo
    let len;
    let data = new CertificateInfo(null);
    // Deserialize message field [info_type]
    data.info_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [info_detail]
    data.info_detail = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.info_type.length;
    length += object.info_detail.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/CertificateInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6beea3a96ca34ec05821cc6a164f8ac7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string info_type
    string info_detail
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CertificateInfo(null);
    if (msg.info_type !== undefined) {
      resolved.info_type = msg.info_type;
    }
    else {
      resolved.info_type = ''
    }

    if (msg.info_detail !== undefined) {
      resolved.info_detail = msg.info_detail;
    }
    else {
      resolved.info_detail = ''
    }

    return resolved;
    }
};

module.exports = CertificateInfo;
