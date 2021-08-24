// Auto-generated. Do not edit!

// (in-package lxind_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetNavStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNavStatusRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNavStatusRequest
    let len;
    let data = new GetNavStatusRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lxind_msgs/GetNavStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetNavStatusRequest(null);
    return resolved;
    }
};

class GetNavStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.curr_posi = null;
      this.reach_state = null;
      this.prec_state = null;
    }
    else {
      if (initObj.hasOwnProperty('curr_posi')) {
        this.curr_posi = initObj.curr_posi
      }
      else {
        this.curr_posi = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('reach_state')) {
        this.reach_state = initObj.reach_state
      }
      else {
        this.reach_state = 0;
      }
      if (initObj.hasOwnProperty('prec_state')) {
        this.prec_state = initObj.prec_state
      }
      else {
        this.prec_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNavStatusResponse
    // Serialize message field [curr_posi]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.curr_posi, buffer, bufferOffset);
    // Serialize message field [reach_state]
    bufferOffset = _serializer.int8(obj.reach_state, buffer, bufferOffset);
    // Serialize message field [prec_state]
    bufferOffset = _serializer.int8(obj.prec_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNavStatusResponse
    let len;
    let data = new GetNavStatusResponse(null);
    // Deserialize message field [curr_posi]
    data.curr_posi = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [reach_state]
    data.reach_state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [prec_state]
    data.prec_state = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lxind_msgs/GetNavStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db378f79657e7f13f64098eef9409889';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 GOAL_NOT_REACHED=0
    int8 GOAL_REACHED=1
    int8 GOAL_APPROACHING=2
    
    int8 STATE_ADJUST=0
    int8 STATE_WAIT=1
    int8 STATE_FORWARD=2
    int8 STATE_FINISHED=3
    
    geometry_msgs/Pose2D curr_posi
    int8 reach_state
    int8 prec_state
    
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
    const resolved = new GetNavStatusResponse(null);
    if (msg.curr_posi !== undefined) {
      resolved.curr_posi = geometry_msgs.msg.Pose2D.Resolve(msg.curr_posi)
    }
    else {
      resolved.curr_posi = new geometry_msgs.msg.Pose2D()
    }

    if (msg.reach_state !== undefined) {
      resolved.reach_state = msg.reach_state;
    }
    else {
      resolved.reach_state = 0
    }

    if (msg.prec_state !== undefined) {
      resolved.prec_state = msg.prec_state;
    }
    else {
      resolved.prec_state = 0
    }

    return resolved;
    }
};

// Constants for message
GetNavStatusResponse.Constants = {
  GOAL_NOT_REACHED: 0,
  GOAL_REACHED: 1,
  GOAL_APPROACHING: 2,
  STATE_ADJUST: 0,
  STATE_WAIT: 1,
  STATE_FORWARD: 2,
  STATE_FINISHED: 3,
}

module.exports = {
  Request: GetNavStatusRequest,
  Response: GetNavStatusResponse,
  md5sum() { return 'db378f79657e7f13f64098eef9409889'; },
  datatype() { return 'lxind_msgs/GetNavStatus'; }
};
