// Auto-generated. Do not edit!

// (in-package lxind_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TaskStatus = require('./TaskStatus.js');

//-----------------------------------------------------------

class TaskStatuses {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.statuses = null;
    }
    else {
      if (initObj.hasOwnProperty('statuses')) {
        this.statuses = initObj.statuses
      }
      else {
        this.statuses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskStatuses
    // Serialize message field [statuses]
    // Serialize the length for message field [statuses]
    bufferOffset = _serializer.uint32(obj.statuses.length, buffer, bufferOffset);
    obj.statuses.forEach((val) => {
      bufferOffset = TaskStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskStatuses
    let len;
    let data = new TaskStatuses(null);
    // Deserialize message field [statuses]
    // Deserialize array length for message field [statuses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.statuses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.statuses[i] = TaskStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 13 * object.statuses.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/TaskStatuses';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a910037bbbb83eb5213f09190db3e871';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    lxind_msgs/TaskStatus[] statuses
    ================================================================================
    MSG: lxind_msgs/TaskStatus
    uint8 STATUS_UNFINISHED = 0
    uint8 STATUS_SUCCEEDED = 1
    uint8 STATUS_FAILED = 2
    uint8 STATUS_PAUSED = 3
    
    #  not accepted by diaodu
    uint8 STATUS_STOPPED = 10    # task stopped, no need send to diaodu
    uint8 STATUS_OFFLINE_PAUSED = 11
    uint8 STATUS_SKIP = 12
    uint8 STATUS_EXCEPT = 13
    
    int64 task_id
    uint32 pri_task_cmd
    uint8 status
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskStatuses(null);
    if (msg.statuses !== undefined) {
      resolved.statuses = new Array(msg.statuses.length);
      for (let i = 0; i < resolved.statuses.length; ++i) {
        resolved.statuses[i] = TaskStatus.Resolve(msg.statuses[i]);
      }
    }
    else {
      resolved.statuses = []
    }

    return resolved;
    }
};

module.exports = TaskStatuses;
