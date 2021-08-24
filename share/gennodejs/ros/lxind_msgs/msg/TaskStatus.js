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

class TaskStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.pri_task_cmd = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('pri_task_cmd')) {
        this.pri_task_cmd = initObj.pri_task_cmd
      }
      else {
        this.pri_task_cmd = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskStatus
    // Serialize message field [task_id]
    bufferOffset = _serializer.int64(obj.task_id, buffer, bufferOffset);
    // Serialize message field [pri_task_cmd]
    bufferOffset = _serializer.uint32(obj.pri_task_cmd, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskStatus
    let len;
    let data = new TaskStatus(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [pri_task_cmd]
    data.pri_task_cmd = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/TaskStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c006c382a86ee1bce524eaad28c8207';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TaskStatus(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.pri_task_cmd !== undefined) {
      resolved.pri_task_cmd = msg.pri_task_cmd;
    }
    else {
      resolved.pri_task_cmd = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
TaskStatus.Constants = {
  STATUS_UNFINISHED: 0,
  STATUS_SUCCEEDED: 1,
  STATUS_FAILED: 2,
  STATUS_PAUSED: 3,
  STATUS_STOPPED: 10,
  STATUS_OFFLINE_PAUSED: 11,
  STATUS_SKIP: 12,
  STATUS_EXCEPT: 13,
}

module.exports = TaskStatus;
