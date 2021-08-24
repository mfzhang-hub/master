// Auto-generated. Do not edit!

// (in-package lxind_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class poseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.get_pose = null;
      this.init_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('get_pose')) {
        this.get_pose = initObj.get_pose
      }
      else {
        this.get_pose = 0;
      }
      if (initObj.hasOwnProperty('init_pose')) {
        this.init_pose = initObj.init_pose
      }
      else {
        this.init_pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type poseRequest
    // Serialize message field [get_pose]
    bufferOffset = _serializer.int64(obj.get_pose, buffer, bufferOffset);
    // Serialize message field [init_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.init_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type poseRequest
    let len;
    let data = new poseRequest(null);
    // Deserialize message field [get_pose]
    data.get_pose = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [init_pose]
    data.init_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.init_pose);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lxind_msgs/poseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dcaf254239d927a9d07fdae0edf241aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 get_pose
    geometry_msgs/PoseStamped init_pose
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new poseRequest(null);
    if (msg.get_pose !== undefined) {
      resolved.get_pose = msg.get_pose;
    }
    else {
      resolved.get_pose = 0
    }

    if (msg.init_pose !== undefined) {
      resolved.init_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.init_pose)
    }
    else {
      resolved.init_pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

class poseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type poseResponse
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type poseResponse
    let len;
    let data = new poseResponse(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lxind_msgs/poseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ae20343ba64ec05ab718b1738b7da43';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped pose
    bool success
    
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new poseResponse(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: poseRequest,
  Response: poseResponse,
  md5sum() { return '2c6f431f1b0c52ae4c85948feb8a7704'; },
  datatype() { return 'lxind_msgs/pose'; }
};
