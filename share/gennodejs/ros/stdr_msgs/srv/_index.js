
"use strict";

let DeleteRfidTag = require('./DeleteRfidTag.js')
let DeleteThermalSource = require('./DeleteThermalSource.js')
let LoadExternalMap = require('./LoadExternalMap.js')
let MoveRobot = require('./MoveRobot.js')
let DeleteCO2Source = require('./DeleteCO2Source.js')
let LoadMap = require('./LoadMap.js')
let AddThermalSource = require('./AddThermalSource.js')
let RegisterGui = require('./RegisterGui.js')
let DeleteSoundSource = require('./DeleteSoundSource.js')
let AddSoundSource = require('./AddSoundSource.js')
let AddCO2Source = require('./AddCO2Source.js')
let AddRfidTag = require('./AddRfidTag.js')

module.exports = {
  DeleteRfidTag: DeleteRfidTag,
  DeleteThermalSource: DeleteThermalSource,
  LoadExternalMap: LoadExternalMap,
  MoveRobot: MoveRobot,
  DeleteCO2Source: DeleteCO2Source,
  LoadMap: LoadMap,
  AddThermalSource: AddThermalSource,
  RegisterGui: RegisterGui,
  DeleteSoundSource: DeleteSoundSource,
  AddSoundSource: AddSoundSource,
  AddCO2Source: AddCO2Source,
  AddRfidTag: AddRfidTag,
};
