
"use strict";

let TestNestedService = require('./TestNestedService.js')
let TestMultipleRequestFields = require('./TestMultipleRequestFields.js')
let TestRequestAndResponse = require('./TestRequestAndResponse.js')
let TestEmpty = require('./TestEmpty.js')
let SendBytes = require('./SendBytes.js')
let TestArrayRequest = require('./TestArrayRequest.js')
let TestMultipleResponseFields = require('./TestMultipleResponseFields.js')
let TestRequestOnly = require('./TestRequestOnly.js')
let TestResponseOnly = require('./TestResponseOnly.js')
let AddTwoInts = require('./AddTwoInts.js')

module.exports = {
  TestNestedService: TestNestedService,
  TestMultipleRequestFields: TestMultipleRequestFields,
  TestRequestAndResponse: TestRequestAndResponse,
  TestEmpty: TestEmpty,
  SendBytes: SendBytes,
  TestArrayRequest: TestArrayRequest,
  TestMultipleResponseFields: TestMultipleResponseFields,
  TestRequestOnly: TestRequestOnly,
  TestResponseOnly: TestResponseOnly,
  AddTwoInts: AddTwoInts,
};
