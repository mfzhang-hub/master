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

//-----------------------------------------------------------

class MapMetaData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_name = null;
      this.map_path_prefix = null;
      this.width = null;
      this.height = null;
      this.origin = null;
      this.resolution = null;
      this.is_switched_map = null;
      this.initial_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('map_name')) {
        this.map_name = initObj.map_name
      }
      else {
        this.map_name = '';
      }
      if (initObj.hasOwnProperty('map_path_prefix')) {
        this.map_path_prefix = initObj.map_path_prefix
      }
      else {
        this.map_path_prefix = '';
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('origin')) {
        this.origin = initObj.origin
      }
      else {
        this.origin = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('resolution')) {
        this.resolution = initObj.resolution
      }
      else {
        this.resolution = 0.0;
      }
      if (initObj.hasOwnProperty('is_switched_map')) {
        this.is_switched_map = initObj.is_switched_map
      }
      else {
        this.is_switched_map = false;
      }
      if (initObj.hasOwnProperty('initial_pose')) {
        this.initial_pose = initObj.initial_pose
      }
      else {
        this.initial_pose = new geometry_msgs.msg.Pose2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapMetaData
    // Serialize message field [map_name]
    bufferOffset = _serializer.string(obj.map_name, buffer, bufferOffset);
    // Serialize message field [map_path_prefix]
    bufferOffset = _serializer.string(obj.map_path_prefix, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.uint32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.uint32(obj.height, buffer, bufferOffset);
    // Serialize message field [origin]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.origin, buffer, bufferOffset);
    // Serialize message field [resolution]
    bufferOffset = _serializer.float32(obj.resolution, buffer, bufferOffset);
    // Serialize message field [is_switched_map]
    bufferOffset = _serializer.bool(obj.is_switched_map, buffer, bufferOffset);
    // Serialize message field [initial_pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.initial_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapMetaData
    let len;
    let data = new MapMetaData(null);
    // Deserialize message field [map_name]
    data.map_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_path_prefix]
    data.map_path_prefix = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [origin]
    data.origin = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [resolution]
    data.resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_switched_map]
    data.is_switched_map = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [initial_pose]
    data.initial_pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.map_name.length;
    length += object.map_path_prefix.length;
    return length + 101;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/MapMetaData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6bf1e47e51e46074d8693b0726c02fb3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # map name
    string map_name             # map name, ex.outmzpick
    string map_path_prefix      # path without suffix, ex: /home/fr1511b/lxind_ws/install/share/lxind_nav/maps/
    
    # Map width [cells]
    uint32 width
    # Map height [cells]
    uint32 height
    
    # The origin of the map [m, m, rad].  This is the real-world pose of the
    # cell (0,0) in the map.
    geometry_msgs/Pose origin
    float32 resolution
    
    
    ####################################################
    bool is_switched_map             # 是否是切换地图 
    geometry_msgs/Pose2D initial_pose  # 切换地图后的初始点
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
    const resolved = new MapMetaData(null);
    if (msg.map_name !== undefined) {
      resolved.map_name = msg.map_name;
    }
    else {
      resolved.map_name = ''
    }

    if (msg.map_path_prefix !== undefined) {
      resolved.map_path_prefix = msg.map_path_prefix;
    }
    else {
      resolved.map_path_prefix = ''
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.origin !== undefined) {
      resolved.origin = geometry_msgs.msg.Pose.Resolve(msg.origin)
    }
    else {
      resolved.origin = new geometry_msgs.msg.Pose()
    }

    if (msg.resolution !== undefined) {
      resolved.resolution = msg.resolution;
    }
    else {
      resolved.resolution = 0.0
    }

    if (msg.is_switched_map !== undefined) {
      resolved.is_switched_map = msg.is_switched_map;
    }
    else {
      resolved.is_switched_map = false
    }

    if (msg.initial_pose !== undefined) {
      resolved.initial_pose = geometry_msgs.msg.Pose2D.Resolve(msg.initial_pose)
    }
    else {
      resolved.initial_pose = new geometry_msgs.msg.Pose2D()
    }

    return resolved;
    }
};

module.exports = MapMetaData;
