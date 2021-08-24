// Auto-generated. Do not edit!

// (in-package lxind_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavTask = require('./NavTask.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NavTasks {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.b_append = null;
      this.tasks = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('b_append')) {
        this.b_append = initObj.b_append
      }
      else {
        this.b_append = false;
      }
      if (initObj.hasOwnProperty('tasks')) {
        this.tasks = initObj.tasks
      }
      else {
        this.tasks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavTasks
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [b_append]
    bufferOffset = _serializer.bool(obj.b_append, buffer, bufferOffset);
    // Serialize message field [tasks]
    // Serialize the length for message field [tasks]
    bufferOffset = _serializer.uint32(obj.tasks.length, buffer, bufferOffset);
    obj.tasks.forEach((val) => {
      bufferOffset = NavTask.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavTasks
    let len;
    let data = new NavTasks(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [b_append]
    data.b_append = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tasks]
    // Deserialize array length for message field [tasks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tasks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tasks[i] = NavTask.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.tasks.forEach((val) => {
      length += NavTask.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/NavTasks';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad67f297ef1a9306a061f82f2b2a7d23';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    bool b_append
    lxind_msgs/NavTask[] tasks
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
    MSG: lxind_msgs/NavTask
    int64 task_id
    uint32 pri_task_cmd
    
    lxind_msgs/RobotPose init_state
    lxind_msgs/RobotPose target_state
    
    int32 target_id
    string target_name
    float32 tol_dist
    float32 tol_angle
    uint8 to_goal_mode
    
    bool enable_oa
    float32 max_speed
    float32 min_turn_radius
    
    lxind_msgs/PathPoint[] fixed_path
    
    # Robot spec task
    uint8 load_mode
    uint8 direction
    
    # precloc
    float32 prec_dist
    
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
    const resolved = new NavTasks(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.b_append !== undefined) {
      resolved.b_append = msg.b_append;
    }
    else {
      resolved.b_append = false
    }

    if (msg.tasks !== undefined) {
      resolved.tasks = new Array(msg.tasks.length);
      for (let i = 0; i < resolved.tasks.length; ++i) {
        resolved.tasks[i] = NavTask.Resolve(msg.tasks[i]);
      }
    }
    else {
      resolved.tasks = []
    }

    return resolved;
    }
};

module.exports = NavTasks;
