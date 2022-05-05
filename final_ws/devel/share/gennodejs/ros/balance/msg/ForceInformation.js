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
      this.left = null;
      this.right = null;
      this.front = null;
      this.back = null;
    }
    else {
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = [];
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = [];
      }
      if (initObj.hasOwnProperty('front')) {
        this.front = initObj.front
      }
      else {
        this.front = [];
      }
      if (initObj.hasOwnProperty('back')) {
        this.back = initObj.back
      }
      else {
        this.back = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ForceInformation
    // Serialize message field [left]
    bufferOffset = _arraySerializer.int16(obj.left, buffer, bufferOffset, null);
    // Serialize message field [right]
    bufferOffset = _arraySerializer.int16(obj.right, buffer, bufferOffset, null);
    // Serialize message field [front]
    bufferOffset = _arraySerializer.int16(obj.front, buffer, bufferOffset, null);
    // Serialize message field [back]
    bufferOffset = _arraySerializer.int16(obj.back, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ForceInformation
    let len;
    let data = new ForceInformation(null);
    // Deserialize message field [left]
    data.left = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [right]
    data.right = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [front]
    data.front = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [back]
    data.back = _arrayDeserializer.int16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.left.length;
    length += 2 * object.right.length;
    length += 2 * object.front.length;
    length += 2 * object.back.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'balance/ForceInformation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94026a7e62b0f33847933ce7f6424b24';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16[] left
    int16[] right
    int16[] front
    int16[] back
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ForceInformation(null);
    if (msg.left !== undefined) {
      resolved.left = msg.left;
    }
    else {
      resolved.left = []
    }

    if (msg.right !== undefined) {
      resolved.right = msg.right;
    }
    else {
      resolved.right = []
    }

    if (msg.front !== undefined) {
      resolved.front = msg.front;
    }
    else {
      resolved.front = []
    }

    if (msg.back !== undefined) {
      resolved.back = msg.back;
    }
    else {
      resolved.back = []
    }

    return resolved;
    }
};

module.exports = ForceInformation;
