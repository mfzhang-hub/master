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

class MapLoadStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.module_name = null;
      this.map_name = null;
      this.is_loaded = null;
    }
    else {
      if (initObj.hasOwnProperty('module_name')) {
        this.module_name = initObj.module_name
      }
      else {
        this.module_name = '';
      }
      if (initObj.hasOwnProperty('map_name')) {
        this.map_name = initObj.map_name
      }
      else {
        this.map_name = '';
      }
      if (initObj.hasOwnProperty('is_loaded')) {
        this.is_loaded = initObj.is_loaded
      }
      else {
        this.is_loaded = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapLoadStatus
    // Serialize message field [module_name]
    bufferOffset = _serializer.string(obj.module_name, buffer, bufferOffset);
    // Serialize message field [map_name]
    bufferOffset = _serializer.string(obj.map_name, buffer, bufferOffset);
    // Serialize message field [is_loaded]
    bufferOffset = _serializer.bool(obj.is_loaded, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapLoadStatus
    let len;
    let data = new MapLoadStatus(null);
    // Deserialize message field [module_name]
    data.module_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_name]
    data.map_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_loaded]
    data.is_loaded = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.module_name.length;
    length += object.map_name.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/MapLoadStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3555824c32229073694e08cee0c3f84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string module_name
    string map_name
    bool is_loaded
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapLoadStatus(null);
    if (msg.module_name !== undefined) {
      resolved.module_name = msg.module_name;
    }
    else {
      resolved.module_name = ''
    }

    if (msg.map_name !== undefined) {
      resolved.map_name = msg.map_name;
    }
    else {
      resolved.map_name = ''
    }

    if (msg.is_loaded !== undefined) {
      resolved.is_loaded = msg.is_loaded;
    }
    else {
      resolved.is_loaded = false
    }

    return resolved;
    }
};

module.exports = MapLoadStatus;
