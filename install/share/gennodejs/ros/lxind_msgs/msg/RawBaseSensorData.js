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

class RawBaseSensorData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left_encoder = null;
      this.right_encoder = null;
      this.yaw = null;
      this.is_bumped = null;
      this.emerg_pressed = null;
      this.switch1_on = null;
      this.switch2_on = null;
      this.switch3_on = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left_encoder')) {
        this.left_encoder = initObj.left_encoder
      }
      else {
        this.left_encoder = 0;
      }
      if (initObj.hasOwnProperty('right_encoder')) {
        this.right_encoder = initObj.right_encoder
      }
      else {
        this.right_encoder = 0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('is_bumped')) {
        this.is_bumped = initObj.is_bumped
      }
      else {
        this.is_bumped = false;
      }
      if (initObj.hasOwnProperty('emerg_pressed')) {
        this.emerg_pressed = initObj.emerg_pressed
      }
      else {
        this.emerg_pressed = false;
      }
      if (initObj.hasOwnProperty('switch1_on')) {
        this.switch1_on = initObj.switch1_on
      }
      else {
        this.switch1_on = false;
      }
      if (initObj.hasOwnProperty('switch2_on')) {
        this.switch2_on = initObj.switch2_on
      }
      else {
        this.switch2_on = false;
      }
      if (initObj.hasOwnProperty('switch3_on')) {
        this.switch3_on = initObj.switch3_on
      }
      else {
        this.switch3_on = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawBaseSensorData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_encoder]
    bufferOffset = _serializer.int32(obj.left_encoder, buffer, bufferOffset);
    // Serialize message field [right_encoder]
    bufferOffset = _serializer.int32(obj.right_encoder, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [is_bumped]
    bufferOffset = _serializer.bool(obj.is_bumped, buffer, bufferOffset);
    // Serialize message field [emerg_pressed]
    bufferOffset = _serializer.bool(obj.emerg_pressed, buffer, bufferOffset);
    // Serialize message field [switch1_on]
    bufferOffset = _serializer.bool(obj.switch1_on, buffer, bufferOffset);
    // Serialize message field [switch2_on]
    bufferOffset = _serializer.bool(obj.switch2_on, buffer, bufferOffset);
    // Serialize message field [switch3_on]
    bufferOffset = _serializer.bool(obj.switch3_on, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawBaseSensorData
    let len;
    let data = new RawBaseSensorData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_encoder]
    data.left_encoder = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [right_encoder]
    data.right_encoder = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_bumped]
    data.is_bumped = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [emerg_pressed]
    data.emerg_pressed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [switch1_on]
    data.switch1_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [switch2_on]
    data.switch2_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [switch3_on]
    data.switch3_on = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/RawBaseSensorData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a215546cf8369a7c4083a9a14c8c42a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # raw values reported from base controller
    Header header
    
    int32 left_encoder
    int32 right_encoder
    float32 yaw
    bool is_bumped
    bool emerg_pressed
    
    bool switch1_on
    bool switch2_on
    bool switch3_on
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
    const resolved = new RawBaseSensorData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left_encoder !== undefined) {
      resolved.left_encoder = msg.left_encoder;
    }
    else {
      resolved.left_encoder = 0
    }

    if (msg.right_encoder !== undefined) {
      resolved.right_encoder = msg.right_encoder;
    }
    else {
      resolved.right_encoder = 0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.is_bumped !== undefined) {
      resolved.is_bumped = msg.is_bumped;
    }
    else {
      resolved.is_bumped = false
    }

    if (msg.emerg_pressed !== undefined) {
      resolved.emerg_pressed = msg.emerg_pressed;
    }
    else {
      resolved.emerg_pressed = false
    }

    if (msg.switch1_on !== undefined) {
      resolved.switch1_on = msg.switch1_on;
    }
    else {
      resolved.switch1_on = false
    }

    if (msg.switch2_on !== undefined) {
      resolved.switch2_on = msg.switch2_on;
    }
    else {
      resolved.switch2_on = false
    }

    if (msg.switch3_on !== undefined) {
      resolved.switch3_on = msg.switch3_on;
    }
    else {
      resolved.switch3_on = false
    }

    return resolved;
    }
};

module.exports = RawBaseSensorData;
