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

class BatteryStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.voltage = null;
      this.current = null;
      this.remain_bat = null;
      this.full_bat = null;
      this.cell_volt = null;
      this.tempterature = null;
      this.batt_cycle = null;
      this.design_capacity = null;
      this.remaining_percentage = null;
      this.is_charging = null;
      this.is_battery_low = null;
      this.is_battery_full = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0;
      }
      if (initObj.hasOwnProperty('remain_bat')) {
        this.remain_bat = initObj.remain_bat
      }
      else {
        this.remain_bat = 0;
      }
      if (initObj.hasOwnProperty('full_bat')) {
        this.full_bat = initObj.full_bat
      }
      else {
        this.full_bat = 0;
      }
      if (initObj.hasOwnProperty('cell_volt')) {
        this.cell_volt = initObj.cell_volt
      }
      else {
        this.cell_volt = [];
      }
      if (initObj.hasOwnProperty('tempterature')) {
        this.tempterature = initObj.tempterature
      }
      else {
        this.tempterature = [];
      }
      if (initObj.hasOwnProperty('batt_cycle')) {
        this.batt_cycle = initObj.batt_cycle
      }
      else {
        this.batt_cycle = 0;
      }
      if (initObj.hasOwnProperty('design_capacity')) {
        this.design_capacity = initObj.design_capacity
      }
      else {
        this.design_capacity = 0;
      }
      if (initObj.hasOwnProperty('remaining_percentage')) {
        this.remaining_percentage = initObj.remaining_percentage
      }
      else {
        this.remaining_percentage = 0;
      }
      if (initObj.hasOwnProperty('is_charging')) {
        this.is_charging = initObj.is_charging
      }
      else {
        this.is_charging = false;
      }
      if (initObj.hasOwnProperty('is_battery_low')) {
        this.is_battery_low = initObj.is_battery_low
      }
      else {
        this.is_battery_low = false;
      }
      if (initObj.hasOwnProperty('is_battery_full')) {
        this.is_battery_full = initObj.is_battery_full
      }
      else {
        this.is_battery_full = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.uint16(obj.voltage, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.int16(obj.current, buffer, bufferOffset);
    // Serialize message field [remain_bat]
    bufferOffset = _serializer.uint16(obj.remain_bat, buffer, bufferOffset);
    // Serialize message field [full_bat]
    bufferOffset = _serializer.uint16(obj.full_bat, buffer, bufferOffset);
    // Serialize message field [cell_volt]
    bufferOffset = _arraySerializer.uint16(obj.cell_volt, buffer, bufferOffset, null);
    // Serialize message field [tempterature]
    bufferOffset = _arraySerializer.uint16(obj.tempterature, buffer, bufferOffset, null);
    // Serialize message field [batt_cycle]
    bufferOffset = _serializer.uint16(obj.batt_cycle, buffer, bufferOffset);
    // Serialize message field [design_capacity]
    bufferOffset = _serializer.uint16(obj.design_capacity, buffer, bufferOffset);
    // Serialize message field [remaining_percentage]
    bufferOffset = _serializer.uint8(obj.remaining_percentage, buffer, bufferOffset);
    // Serialize message field [is_charging]
    bufferOffset = _serializer.bool(obj.is_charging, buffer, bufferOffset);
    // Serialize message field [is_battery_low]
    bufferOffset = _serializer.bool(obj.is_battery_low, buffer, bufferOffset);
    // Serialize message field [is_battery_full]
    bufferOffset = _serializer.bool(obj.is_battery_full, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryStatus
    let len;
    let data = new BatteryStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [remain_bat]
    data.remain_bat = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [full_bat]
    data.full_bat = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [cell_volt]
    data.cell_volt = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [tempterature]
    data.tempterature = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [batt_cycle]
    data.batt_cycle = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [design_capacity]
    data.design_capacity = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [remaining_percentage]
    data.remaining_percentage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [is_charging]
    data.is_charging = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_battery_low]
    data.is_battery_low = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_battery_full]
    data.is_battery_full = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 2 * object.cell_volt.length;
    length += 2 * object.tempterature.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lxind_msgs/BatteryStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8fbc40232ad20f60cddeccd180074b14';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint16 voltage
    int16 current
    
    uint16 remain_bat
    uint16 full_bat
    
    uint16[] cell_volt
    uint16[] tempterature
    uint16    batt_cycle
    uint16    design_capacity
    
    uint8 remaining_percentage 
    bool is_charging
    bool is_battery_low
    bool is_battery_full
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
    const resolved = new BatteryStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0
    }

    if (msg.remain_bat !== undefined) {
      resolved.remain_bat = msg.remain_bat;
    }
    else {
      resolved.remain_bat = 0
    }

    if (msg.full_bat !== undefined) {
      resolved.full_bat = msg.full_bat;
    }
    else {
      resolved.full_bat = 0
    }

    if (msg.cell_volt !== undefined) {
      resolved.cell_volt = msg.cell_volt;
    }
    else {
      resolved.cell_volt = []
    }

    if (msg.tempterature !== undefined) {
      resolved.tempterature = msg.tempterature;
    }
    else {
      resolved.tempterature = []
    }

    if (msg.batt_cycle !== undefined) {
      resolved.batt_cycle = msg.batt_cycle;
    }
    else {
      resolved.batt_cycle = 0
    }

    if (msg.design_capacity !== undefined) {
      resolved.design_capacity = msg.design_capacity;
    }
    else {
      resolved.design_capacity = 0
    }

    if (msg.remaining_percentage !== undefined) {
      resolved.remaining_percentage = msg.remaining_percentage;
    }
    else {
      resolved.remaining_percentage = 0
    }

    if (msg.is_charging !== undefined) {
      resolved.is_charging = msg.is_charging;
    }
    else {
      resolved.is_charging = false
    }

    if (msg.is_battery_low !== undefined) {
      resolved.is_battery_low = msg.is_battery_low;
    }
    else {
      resolved.is_battery_low = false
    }

    if (msg.is_battery_full !== undefined) {
      resolved.is_battery_full = msg.is_battery_full;
    }
    else {
      resolved.is_battery_full = false
    }

    return resolved;
    }
};

module.exports = BatteryStatus;
