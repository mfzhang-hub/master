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

class QueryPathAvail {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.session_id = null;
      this.path_nodes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('session_id')) {
        this.session_id = initObj.session_id
      }
      else {
        this.session_id = 0;
      }
      if (initObj.hasOwnProperty('path_nodes')) {
        this.path_nodes = initObj.path_nodes
      }
      else {
        this.path_nodes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QueryPathAvail
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [session_id]
    bufferOffset = _serializer.uint32(obj.session_id, buffer, bufferOffset);
    // Serialize message field [path_nodes]
    bufferOffset = _arraySerializer.string(obj.path_nodes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QueryPathAvail
    let len;
    let data = new QueryPathAvail(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [session_id]
    data.session_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [path_nodes]
    data.path_nodes = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.path_nodes.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/QueryPathAvail';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c0bb42d59bd907f57ed37938d4d824a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint32 session_id
    
    string[] path_nodes
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
    const resolved = new QueryPathAvail(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.session_id !== undefined) {
      resolved.session_id = msg.session_id;
    }
    else {
      resolved.session_id = 0
    }

    if (msg.path_nodes !== undefined) {
      resolved.path_nodes = msg.path_nodes;
    }
    else {
      resolved.path_nodes = []
    }

    return resolved;
    }
};

module.exports = QueryPathAvail;
