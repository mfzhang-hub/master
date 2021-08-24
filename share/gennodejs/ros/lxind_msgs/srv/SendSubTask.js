// Auto-generated. Do not edit!

// (in-package lxind_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotPose = require('../msg/RobotPose.js');
let PathPoint = require('../msg/PathPoint.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SendSubTaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.sub_task_cmd = null;
      this.next_pritask_cmd = null;
      this.target_state = null;
      this.target_id = null;
      this.target_name = null;
      this.tol_dist = null;
      this.tol_angle = null;
      this.to_goal_mode = null;
      this.enable_oa = null;
      this.max_speed = null;
      this.safe_dist = null;
      this.min_turn_radius = null;
      this.shape_transform = null;
      this.init_state = null;
      this.fixed_path = null;
      this.load_mode = null;
      this.direction = null;
      this.align_part = null;
      this.align_dir = null;
      this.prec_dist = null;
      this.roll_part = null;
      this.extra_info = null;
    }
    else {
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('sub_task_cmd')) {
        this.sub_task_cmd = initObj.sub_task_cmd
      }
      else {
        this.sub_task_cmd = 0;
      }
      if (initObj.hasOwnProperty('next_pritask_cmd')) {
        this.next_pritask_cmd = initObj.next_pritask_cmd
      }
      else {
        this.next_pritask_cmd = 0;
      }
      if (initObj.hasOwnProperty('target_state')) {
        this.target_state = initObj.target_state
      }
      else {
        this.target_state = new RobotPose();
      }
      if (initObj.hasOwnProperty('target_id')) {
        this.target_id = initObj.target_id
      }
      else {
        this.target_id = 0;
      }
      if (initObj.hasOwnProperty('target_name')) {
        this.target_name = initObj.target_name
      }
      else {
        this.target_name = '';
      }
      if (initObj.hasOwnProperty('tol_dist')) {
        this.tol_dist = initObj.tol_dist
      }
      else {
        this.tol_dist = 0.0;
      }
      if (initObj.hasOwnProperty('tol_angle')) {
        this.tol_angle = initObj.tol_angle
      }
      else {
        this.tol_angle = 0.0;
      }
      if (initObj.hasOwnProperty('to_goal_mode')) {
        this.to_goal_mode = initObj.to_goal_mode
      }
      else {
        this.to_goal_mode = 0;
      }
      if (initObj.hasOwnProperty('enable_oa')) {
        this.enable_oa = initObj.enable_oa
      }
      else {
        this.enable_oa = false;
      }
      if (initObj.hasOwnProperty('max_speed')) {
        this.max_speed = initObj.max_speed
      }
      else {
        this.max_speed = 0.0;
      }
      if (initObj.hasOwnProperty('safe_dist')) {
        this.safe_dist = initObj.safe_dist
      }
      else {
        this.safe_dist = 0.0;
      }
      if (initObj.hasOwnProperty('min_turn_radius')) {
        this.min_turn_radius = initObj.min_turn_radius
      }
      else {
        this.min_turn_radius = 0.0;
      }
      if (initObj.hasOwnProperty('shape_transform')) {
        this.shape_transform = initObj.shape_transform
      }
      else {
        this.shape_transform = 0;
      }
      if (initObj.hasOwnProperty('init_state')) {
        this.init_state = initObj.init_state
      }
      else {
        this.init_state = new RobotPose();
      }
      if (initObj.hasOwnProperty('fixed_path')) {
        this.fixed_path = initObj.fixed_path
      }
      else {
        this.fixed_path = [];
      }
      if (initObj.hasOwnProperty('load_mode')) {
        this.load_mode = initObj.load_mode
      }
      else {
        this.load_mode = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
      if (initObj.hasOwnProperty('align_part')) {
        this.align_part = initObj.align_part
      }
      else {
        this.align_part = 0;
      }
      if (initObj.hasOwnProperty('align_dir')) {
        this.align_dir = initObj.align_dir
      }
      else {
        this.align_dir = 0;
      }
      if (initObj.hasOwnProperty('prec_dist')) {
        this.prec_dist = initObj.prec_dist
      }
      else {
        this.prec_dist = 0.0;
      }
      if (initObj.hasOwnProperty('roll_part')) {
        this.roll_part = initObj.roll_part
      }
      else {
        this.roll_part = '';
      }
      if (initObj.hasOwnProperty('extra_info')) {
        this.extra_info = initObj.extra_info
      }
      else {
        this.extra_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendSubTaskRequest
    // Serialize message field [task_id]
    bufferOffset = _serializer.int32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [sub_task_cmd]
    bufferOffset = _serializer.uint32(obj.sub_task_cmd, buffer, bufferOffset);
    // Serialize message field [next_pritask_cmd]
    bufferOffset = _serializer.int32(obj.next_pritask_cmd, buffer, bufferOffset);
    // Serialize message field [target_state]
    bufferOffset = RobotPose.serialize(obj.target_state, buffer, bufferOffset);
    // Serialize message field [target_id]
    bufferOffset = _serializer.int32(obj.target_id, buffer, bufferOffset);
    // Serialize message field [target_name]
    bufferOffset = _serializer.string(obj.target_name, buffer, bufferOffset);
    // Serialize message field [tol_dist]
    bufferOffset = _serializer.float32(obj.tol_dist, buffer, bufferOffset);
    // Serialize message field [tol_angle]
    bufferOffset = _serializer.float32(obj.tol_angle, buffer, bufferOffset);
    // Serialize message field [to_goal_mode]
    bufferOffset = _serializer.uint8(obj.to_goal_mode, buffer, bufferOffset);
    // Serialize message field [enable_oa]
    bufferOffset = _serializer.bool(obj.enable_oa, buffer, bufferOffset);
    // Serialize message field [max_speed]
    bufferOffset = _serializer.float32(obj.max_speed, buffer, bufferOffset);
    // Serialize message field [safe_dist]
    bufferOffset = _serializer.float32(obj.safe_dist, buffer, bufferOffset);
    // Serialize message field [min_turn_radius]
    bufferOffset = _serializer.float32(obj.min_turn_radius, buffer, bufferOffset);
    // Serialize message field [shape_transform]
    bufferOffset = _serializer.uint8(obj.shape_transform, buffer, bufferOffset);
    // Serialize message field [init_state]
    bufferOffset = RobotPose.serialize(obj.init_state, buffer, bufferOffset);
    // Serialize message field [fixed_path]
    // Serialize the length for message field [fixed_path]
    bufferOffset = _serializer.uint32(obj.fixed_path.length, buffer, bufferOffset);
    obj.fixed_path.forEach((val) => {
      bufferOffset = PathPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [load_mode]
    bufferOffset = _serializer.uint8(obj.load_mode, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.uint8(obj.direction, buffer, bufferOffset);
    // Serialize message field [align_part]
    bufferOffset = _serializer.uint8(obj.align_part, buffer, bufferOffset);
    // Serialize message field [align_dir]
    bufferOffset = _serializer.uint8(obj.align_dir, buffer, bufferOffset);
    // Serialize message field [prec_dist]
    bufferOffset = _serializer.float32(obj.prec_dist, buffer, bufferOffset);
    // Serialize message field [roll_part]
    bufferOffset = _serializer.string(obj.roll_part, buffer, bufferOffset);
    // Serialize message field [extra_info]
    bufferOffset = _serializer.string(obj.extra_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendSubTaskRequest
    let len;
    let data = new SendSubTaskRequest(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sub_task_cmd]
    data.sub_task_cmd = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [next_pritask_cmd]
    data.next_pritask_cmd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [target_state]
    data.target_state = RobotPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_id]
    data.target_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [target_name]
    data.target_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tol_dist]
    data.tol_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tol_angle]
    data.tol_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [to_goal_mode]
    data.to_goal_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [enable_oa]
    data.enable_oa = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [max_speed]
    data.max_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [safe_dist]
    data.safe_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_turn_radius]
    data.min_turn_radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [shape_transform]
    data.shape_transform = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [init_state]
    data.init_state = RobotPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [fixed_path]
    // Deserialize array length for message field [fixed_path]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.fixed_path = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.fixed_path[i] = PathPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [load_mode]
    data.load_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [align_part]
    data.align_part = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [align_dir]
    data.align_dir = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [prec_dist]
    data.prec_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll_part]
    data.roll_part = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [extra_info]
    data.extra_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.target_name.length;
    object.fixed_path.forEach((val) => {
      length += PathPoint.getMessageSize(val);
    });
    length += object.roll_part.length;
    length += object.extra_info.length;
    return length + 87;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lxind_msgs/SendSubTaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87a80a4312f0eac316519b6aeb574e48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 task_id
    uint32 sub_task_cmd
    
    int32 next_pritask_cmd
    
    lxind_msgs/RobotPose target_state
    int32 target_id
    string target_name
    float32 tol_dist
    float32 tol_angle
    uint8 to_goal_mode
    
    bool enable_oa
    float32 max_speed
    float32 safe_dist
    float32 min_turn_radius
    uint8 shape_transform
    
    lxind_msgs/RobotPose init_state
    lxind_msgs/PathPoint[] fixed_path
    
    
    uint8 load_mode
    uint8 direction
    
    uint8 align_part
    uint8 align_dir
    
    
    float32 prec_dist
    
    
    string roll_part
    
    string extra_info
    
    ================================================================================
    MSG: lxind_msgs/RobotPose
    float32 x
    float32 y
    float32 th
    ================================================================================
    MSG: lxind_msgs/PathPoint
    float32 x
    float32 y
    float32 th
    
    string node_name
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendSubTaskRequest(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.sub_task_cmd !== undefined) {
      resolved.sub_task_cmd = msg.sub_task_cmd;
    }
    else {
      resolved.sub_task_cmd = 0
    }

    if (msg.next_pritask_cmd !== undefined) {
      resolved.next_pritask_cmd = msg.next_pritask_cmd;
    }
    else {
      resolved.next_pritask_cmd = 0
    }

    if (msg.target_state !== undefined) {
      resolved.target_state = RobotPose.Resolve(msg.target_state)
    }
    else {
      resolved.target_state = new RobotPose()
    }

    if (msg.target_id !== undefined) {
      resolved.target_id = msg.target_id;
    }
    else {
      resolved.target_id = 0
    }

    if (msg.target_name !== undefined) {
      resolved.target_name = msg.target_name;
    }
    else {
      resolved.target_name = ''
    }

    if (msg.tol_dist !== undefined) {
      resolved.tol_dist = msg.tol_dist;
    }
    else {
      resolved.tol_dist = 0.0
    }

    if (msg.tol_angle !== undefined) {
      resolved.tol_angle = msg.tol_angle;
    }
    else {
      resolved.tol_angle = 0.0
    }

    if (msg.to_goal_mode !== undefined) {
      resolved.to_goal_mode = msg.to_goal_mode;
    }
    else {
      resolved.to_goal_mode = 0
    }

    if (msg.enable_oa !== undefined) {
      resolved.enable_oa = msg.enable_oa;
    }
    else {
      resolved.enable_oa = false
    }

    if (msg.max_speed !== undefined) {
      resolved.max_speed = msg.max_speed;
    }
    else {
      resolved.max_speed = 0.0
    }

    if (msg.safe_dist !== undefined) {
      resolved.safe_dist = msg.safe_dist;
    }
    else {
      resolved.safe_dist = 0.0
    }

    if (msg.min_turn_radius !== undefined) {
      resolved.min_turn_radius = msg.min_turn_radius;
    }
    else {
      resolved.min_turn_radius = 0.0
    }

    if (msg.shape_transform !== undefined) {
      resolved.shape_transform = msg.shape_transform;
    }
    else {
      resolved.shape_transform = 0
    }

    if (msg.init_state !== undefined) {
      resolved.init_state = RobotPose.Resolve(msg.init_state)
    }
    else {
      resolved.init_state = new RobotPose()
    }

    if (msg.fixed_path !== undefined) {
      resolved.fixed_path = new Array(msg.fixed_path.length);
      for (let i = 0; i < resolved.fixed_path.length; ++i) {
        resolved.fixed_path[i] = PathPoint.Resolve(msg.fixed_path[i]);
      }
    }
    else {
      resolved.fixed_path = []
    }

    if (msg.load_mode !== undefined) {
      resolved.load_mode = msg.load_mode;
    }
    else {
      resolved.load_mode = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    if (msg.align_part !== undefined) {
      resolved.align_part = msg.align_part;
    }
    else {
      resolved.align_part = 0
    }

    if (msg.align_dir !== undefined) {
      resolved.align_dir = msg.align_dir;
    }
    else {
      resolved.align_dir = 0
    }

    if (msg.prec_dist !== undefined) {
      resolved.prec_dist = msg.prec_dist;
    }
    else {
      resolved.prec_dist = 0.0
    }

    if (msg.roll_part !== undefined) {
      resolved.roll_part = msg.roll_part;
    }
    else {
      resolved.roll_part = ''
    }

    if (msg.extra_info !== undefined) {
      resolved.extra_info = msg.extra_info;
    }
    else {
      resolved.extra_info = ''
    }

    return resolved;
    }
};

class SendSubTaskResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.succeed = null;
    }
    else {
      if (initObj.hasOwnProperty('succeed')) {
        this.succeed = initObj.succeed
      }
      else {
        this.succeed = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendSubTaskResponse
    // Serialize message field [succeed]
    bufferOffset = _serializer.bool(obj.succeed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendSubTaskResponse
    let len;
    let data = new SendSubTaskResponse(null);
    // Deserialize message field [succeed]
    data.succeed = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lxind_msgs/SendSubTaskResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d9c3b918a0afafe09791ef8d7853918';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool succeed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendSubTaskResponse(null);
    if (msg.succeed !== undefined) {
      resolved.succeed = msg.succeed;
    }
    else {
      resolved.succeed = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SendSubTaskRequest,
  Response: SendSubTaskResponse,
  md5sum() { return 'ded50bd33fc998583d1657965f147705'; },
  datatype() { return 'lxind_msgs/SendSubTask'; }
};
