// Auto-generated. Do not edit!

// (in-package day_02.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class motor_parameter {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.description = null;
      this.speed = null;
      this.enc_count = null;
      this.accelaration = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('enc_count')) {
        this.enc_count = initObj.enc_count
      }
      else {
        this.enc_count = 0;
      }
      if (initObj.hasOwnProperty('accelaration')) {
        this.accelaration = initObj.accelaration
      }
      else {
        this.accelaration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motor_parameter
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [enc_count]
    bufferOffset = _serializer.int64(obj.enc_count, buffer, bufferOffset);
    // Serialize message field [accelaration]
    bufferOffset = _serializer.float32(obj.accelaration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motor_parameter
    let len;
    let data = new motor_parameter(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [enc_count]
    data.enc_count = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [accelaration]
    data.accelaration = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.description);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'day_02/motor_parameter';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33a9c9e48425fe54a289968ec836ca62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    string description
    float32 speed
    int64 enc_count
    float32 accelaration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motor_parameter(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.enc_count !== undefined) {
      resolved.enc_count = msg.enc_count;
    }
    else {
      resolved.enc_count = 0
    }

    if (msg.accelaration !== undefined) {
      resolved.accelaration = msg.accelaration;
    }
    else {
      resolved.accelaration = 0.0
    }

    return resolved;
    }
};

module.exports = motor_parameter;
