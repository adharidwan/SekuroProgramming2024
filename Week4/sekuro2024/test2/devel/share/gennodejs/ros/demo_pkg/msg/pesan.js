// Auto-generated. Do not edit!

// (in-package demo_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class pesan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pesan1 = null;
      this.pesan2 = null;
      this.pesan3 = null;
    }
    else {
      if (initObj.hasOwnProperty('pesan1')) {
        this.pesan1 = initObj.pesan1
      }
      else {
        this.pesan1 = 0;
      }
      if (initObj.hasOwnProperty('pesan2')) {
        this.pesan2 = initObj.pesan2
      }
      else {
        this.pesan2 = 0.0;
      }
      if (initObj.hasOwnProperty('pesan3')) {
        this.pesan3 = initObj.pesan3
      }
      else {
        this.pesan3 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pesan
    // Serialize message field [pesan1]
    bufferOffset = _serializer.int64(obj.pesan1, buffer, bufferOffset);
    // Serialize message field [pesan2]
    bufferOffset = _serializer.float64(obj.pesan2, buffer, bufferOffset);
    // Serialize message field [pesan3]
    bufferOffset = _serializer.string(obj.pesan3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pesan
    let len;
    let data = new pesan(null);
    // Deserialize message field [pesan1]
    data.pesan1 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [pesan2]
    data.pesan2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pesan3]
    data.pesan3 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.pesan3);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'demo_pkg/pesan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '20a3c179e0701ac679503dfd1cfe077f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 pesan1
    float64 pesan2
    string pesan3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pesan(null);
    if (msg.pesan1 !== undefined) {
      resolved.pesan1 = msg.pesan1;
    }
    else {
      resolved.pesan1 = 0
    }

    if (msg.pesan2 !== undefined) {
      resolved.pesan2 = msg.pesan2;
    }
    else {
      resolved.pesan2 = 0.0
    }

    if (msg.pesan3 !== undefined) {
      resolved.pesan3 = msg.pesan3;
    }
    else {
      resolved.pesan3 = ''
    }

    return resolved;
    }
};

module.exports = pesan;
