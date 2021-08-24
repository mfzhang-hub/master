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

class ServerReturnPackage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.package_header = null;
      this.warn = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('package_header')) {
        this.package_header = initObj.package_header
      }
      else {
        this.package_header = 0;
      }
      if (initObj.hasOwnProperty('warn')) {
        this.warn = initObj.warn
      }
      else {
        this.warn = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServerReturnPackage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [package_header]
    bufferOffset = _serializer.int8(obj.package_header, buffer, bufferOffset);
    // Serialize message field [warn]
    bufferOffset = _serializer.int32(obj.warn, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServerReturnPackage
    let len;
    let data = new ServerReturnPackage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [package_header]
    data.package_header = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [warn]
    data.warn = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/ServerReturnPackage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '425ca2618ab4a8a07e9ecad46a72601f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 package_header
    int32    warn
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
    const resolved = new ServerReturnPackage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.package_header !== undefined) {
      resolved.package_header = msg.package_header;
    }
    else {
      resolved.package_header = 0
    }

    if (msg.warn !== undefined) {
      resolved.warn = msg.warn;
    }
    else {
      resolved.warn = 0
    }

    return resolved;
    }
};

module.exports = ServerReturnPackage;
