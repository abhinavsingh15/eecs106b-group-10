// Auto-generated. Do not edit!

// (in-package balance.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ForceInformation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.front = null;
      this.left = null;
      this.right = null;
      this.back = null;
    }
    else {
      if (initObj.hasOwnProperty('front')) {
        this.front = initObj.front
      }
      else {
        this.front = 0;
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = 0;
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = 0;
      }
      if (initObj.hasOwnProperty('back')) {
        this.back = initObj.back
      }
      else {
        this.back = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ForceInformation
    // Serialize message field [front]
    bufferOffset = _serializer.int16(obj.front, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = _serializer.int16(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = _serializer.int16(obj.right, buffer, bufferOffset);
    // Serialize message field [back]
    bufferOffset = _serializer.int16(obj.back, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ForceInformation
    let len;
    let data = new ForceInformation(null);
    // Deserialize message field [front]
    data.front = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [back]
    data.back = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'balance/ForceInformation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1734456ca7c0ca9ac9138b86977d7ada';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 front
    int16 left
    int16 right
    int16 back
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ForceInformation(null);
    if (msg.front !== undefined) {
      resolved.front = msg.front;
    }
    else {
      resolved.front = 0
    }

    if (msg.left !== undefined) {
      resolved.left = msg.left;
    }
    else {
      resolved.left = 0
    }

    if (msg.right !== undefined) {
      resolved.right = msg.right;
    }
    else {
      resolved.right = 0
    }

    if (msg.back !== undefined) {
      resolved.back = msg.back;
    }
    else {
      resolved.back = 0
    }

    return resolved;
    }
};

module.exports = ForceInformation;
