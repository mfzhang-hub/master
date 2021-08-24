// Auto-generated. Do not edit!

// (in-package lxind_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NavStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.latest_task_id = null;
      this.curr_posi = null;
      this.pre_point = null;
      this.next_point = null;
      this.is_exist_task = null;
      this.robot_state = null;
      this.reach_state = null;
      this.carry_state = null;
      this.cur_route_id = null;
      this.cargo_count = null;
      this.exception = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('latest_task_id')) {
        this.latest_task_id = initObj.latest_task_id
      }
      else {
        this.latest_task_id = 0;
      }
      if (initObj.hasOwnProperty('curr_posi')) {
        this.curr_posi = initObj.curr_posi
      }
      else {
        this.curr_posi = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('pre_point')) {
        this.pre_point = initObj.pre_point
      }
      else {
        this.pre_point = 0;
      }
      if (initObj.hasOwnProperty('next_point')) {
        this.next_point = initObj.next_point
      }
      else {
        this.next_point = 0;
      }
      if (initObj.hasOwnProperty('is_exist_task')) {
        this.is_exist_task = initObj.is_exist_task
      }
      else {
        this.is_exist_task = 0;
      }
      if (initObj.hasOwnProperty('robot_state')) {
        this.robot_state = initObj.robot_state
      }
      else {
        this.robot_state = 0;
      }
      if (initObj.hasOwnProperty('reach_state')) {
        this.reach_state = initObj.reach_state
      }
      else {
        this.reach_state = 0;
      }
      if (initObj.hasOwnProperty('carry_state')) {
        this.carry_state = initObj.carry_state
      }
      else {
        this.carry_state = 0;
      }
      if (initObj.hasOwnProperty('cur_route_id')) {
        this.cur_route_id = initObj.cur_route_id
      }
      else {
        this.cur_route_id = 0;
      }
      if (initObj.hasOwnProperty('cargo_count')) {
        this.cargo_count = initObj.cargo_count
      }
      else {
        this.cargo_count = 0;
      }
      if (initObj.hasOwnProperty('exception')) {
        this.exception = initObj.exception
      }
      else {
        this.exception = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [latest_task_id]
    bufferOffset = _serializer.int64(obj.latest_task_id, buffer, bufferOffset);
    // Serialize message field [curr_posi]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.curr_posi, buffer, bufferOffset);
    // Serialize message field [pre_point]
    bufferOffset = _serializer.int32(obj.pre_point, buffer, bufferOffset);
    // Serialize message field [next_point]
    bufferOffset = _serializer.int32(obj.next_point, buffer, bufferOffset);
    // Serialize message field [is_exist_task]
    bufferOffset = _serializer.int32(obj.is_exist_task, buffer, bufferOffset);
    // Serialize message field [robot_state]
    bufferOffset = _serializer.int8(obj.robot_state, buffer, bufferOffset);
    // Serialize message field [reach_state]
    bufferOffset = _serializer.int8(obj.reach_state, buffer, bufferOffset);
    // Serialize message field [carry_state]
    bufferOffset = _serializer.int32(obj.carry_state, buffer, bufferOffset);
    // Serialize message field [cur_route_id]
    bufferOffset = _serializer.int32(obj.cur_route_id, buffer, bufferOffset);
    // Serialize message field [cargo_count]
    bufferOffset = _serializer.int32(obj.cargo_count, buffer, bufferOffset);
    // Serialize message field [exception]
    bufferOffset = _serializer.int32(obj.exception, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavStatus
    let len;
    let data = new NavStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [latest_task_id]
    data.latest_task_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [curr_posi]
    data.curr_posi = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [pre_point]
    data.pre_point = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [next_point]
    data.next_point = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_exist_task]
    data.is_exist_task = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [robot_state]
    data.robot_state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [reach_state]
    data.reach_state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [carry_state]
    data.carry_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cur_route_id]
    data.cur_route_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cargo_count]
    data.cargo_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [exception]
    data.exception = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 62;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/NavStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8af1e2b711c74b6795ee845872930b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 GOAL_NOT_REACHED=0
    int8 GOAL_REACHED=1
    int8 GOAL_APPROACHING=2
    
    Header header
    
    int64 latest_task_id
    
    geometry_msgs/Pose2D curr_posi
    
    int32 pre_point
    int32 next_point
    
    int32 is_exist_task
    
    int8 robot_state
    int8 reach_state
    
    int32 carry_state
    int32 cur_route_id
    int32 cargo_count
    
    int32 exception
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
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.latest_task_id !== undefined) {
      resolved.latest_task_id = msg.latest_task_id;
    }
    else {
      resolved.latest_task_id = 0
    }

    if (msg.curr_posi !== undefined) {
      resolved.curr_posi = geometry_msgs.msg.Pose2D.Resolve(msg.curr_posi)
    }
    else {
      resolved.curr_posi = new geometry_msgs.msg.Pose2D()
    }

    if (msg.pre_point !== undefined) {
      resolved.pre_point = msg.pre_point;
    }
    else {
      resolved.pre_point = 0
    }

    if (msg.next_point !== undefined) {
      resolved.next_point = msg.next_point;
    }
    else {
      resolved.next_point = 0
    }

    if (msg.is_exist_task !== undefined) {
      resolved.is_exist_task = msg.is_exist_task;
    }
    else {
      resolved.is_exist_task = 0
    }

    if (msg.robot_state !== undefined) {
      resolved.robot_state = msg.robot_state;
    }
    else {
      resolved.robot_state = 0
    }

    if (msg.reach_state !== undefined) {
      resolved.reach_state = msg.reach_state;
    }
    else {
      resolved.reach_state = 0
    }

    if (msg.carry_state !== undefined) {
      resolved.carry_state = msg.carry_state;
    }
    else {
      resolved.carry_state = 0
    }

    if (msg.cur_route_id !== undefined) {
      resolved.cur_route_id = msg.cur_route_id;
    }
    else {
      resolved.cur_route_id = 0
    }

    if (msg.cargo_count !== undefined) {
      resolved.cargo_count = msg.cargo_count;
    }
    else {
      resolved.cargo_count = 0
    }

    if (msg.exception !== undefined) {
      resolved.exception = msg.exception;
    }
    else {
      resolved.exception = 0
    }

    return resolved;
    }
};

// Constants for message
NavStatus.Constants = {
  GOAL_NOT_REACHED: 0,
  GOAL_REACHED: 1,
  GOAL_APPROACHING: 2,
}

module.exports = NavStatus;
