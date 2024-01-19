// Auto-generated. Do not edit!

// (in-package demo_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddTwoIntsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value1 = null;
      this.value2 = null;
    }
    else {
      if (initObj.hasOwnProperty('value1')) {
        this.value1 = initObj.value1
      }
      else {
        this.value1 = 0;
      }
      if (initObj.hasOwnProperty('value2')) {
        this.value2 = initObj.value2
      }
      else {
        this.value2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddTwoIntsRequest
    // Serialize message field [value1]
    bufferOffset = _serializer.int64(obj.value1, buffer, bufferOffset);
    // Serialize message field [value2]
    bufferOffset = _serializer.int64(obj.value2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddTwoIntsRequest
    let len;
    let data = new AddTwoIntsRequest(null);
    // Deserialize message field [value1]
    data.value1 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [value2]
    data.value2 = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'demo_pkg/AddTwoIntsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6befecad63ae35cfea4264ad6cc36c0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 value1
    int64 value2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddTwoIntsRequest(null);
    if (msg.value1 !== undefined) {
      resolved.value1 = msg.value1;
    }
    else {
      resolved.value1 = 0
    }

    if (msg.value2 !== undefined) {
      resolved.value2 = msg.value2;
    }
    else {
      resolved.value2 = 0
    }

    return resolved;
    }
};

class AddTwoIntsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sumvalue = null;
    }
    else {
      if (initObj.hasOwnProperty('sumvalue')) {
        this.sumvalue = initObj.sumvalue
      }
      else {
        this.sumvalue = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddTwoIntsResponse
    // Serialize message field [sumvalue]
    bufferOffset = _serializer.int64(obj.sumvalue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddTwoIntsResponse
    let len;
    let data = new AddTwoIntsResponse(null);
    // Deserialize message field [sumvalue]
    data.sumvalue = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'demo_pkg/AddTwoIntsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51b79b1ce1ac22a0e9edc56557c575f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 sumvalue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddTwoIntsResponse(null);
    if (msg.sumvalue !== undefined) {
      resolved.sumvalue = msg.sumvalue;
    }
    else {
      resolved.sumvalue = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: AddTwoIntsRequest,
  Response: AddTwoIntsResponse,
  md5sum() { return 'bebbfb82b9366874b8dd45181885da66'; },
  datatype() { return 'demo_pkg/AddTwoInts'; }
};
