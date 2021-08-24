# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from stdr_msgs/RegisterGuiRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RegisterGuiRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "stdr_msgs/RegisterGuiRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RegisterGuiRequest, self).__init__(*args, **kwds)

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from stdr_msgs/RegisterGuiResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import stdr_msgs.msg
import geometry_msgs.msg

class RegisterGuiResponse(genpy.Message):
  _md5sum = "5ba49d43b5f1ad43f9cbea11348366c5"
  _type = "stdr_msgs/RegisterGuiResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """stdr_msgs/RobotIndexedMsg[] robots


================================================================================
MSG: stdr_msgs/RobotIndexedMsg
string name
stdr_msgs/RobotMsg robot

================================================================================
MSG: stdr_msgs/RobotMsg
geometry_msgs/Pose2D initialPose

stdr_msgs/FootprintMsg footprint

stdr_msgs/LaserSensorMsg[] laserSensors
stdr_msgs/SonarSensorMsg[] sonarSensors
stdr_msgs/RfidSensorMsg[] rfidSensors
stdr_msgs/CO2SensorMsg[] co2Sensors
stdr_msgs/SoundSensorMsg[] soundSensors
stdr_msgs/ThermalSensorMsg[] thermalSensors

stdr_msgs/KinematicMsg kinematicModel

================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
================================================================================
MSG: stdr_msgs/FootprintMsg
geometry_msgs/Point[] points
float32 radius # for circular footprints

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: stdr_msgs/LaserSensorMsg
# Laser Sensor description
float32 maxAngle
float32 minAngle
float32 maxRange
float32 minRange
int32 numRays

stdr_msgs/Noise noise

float32 frequency

string frame_id
geometry_msgs/Pose2D pose # sensor pose, relative to robot center

================================================================================
MSG: stdr_msgs/Noise
bool noise
float32 noiseMean
float32 noiseStd

================================================================================
MSG: stdr_msgs/SonarSensorMsg
# Rfid sensor description
float32 maxRange
float32 minRange
float32 coneAngle

float32 frequency
stdr_msgs/Noise noise

string frame_id
geometry_msgs/Pose2D pose # sensor pose, relative to robot center

================================================================================
MSG: stdr_msgs/RfidSensorMsg
# Rfid sensor description
float32 maxRange
float32 angleSpan
float32 signalCutoff

float32 frequency

string frame_id
geometry_msgs/Pose2D pose # sensor pose, relative to robot center

================================================================================
MSG: stdr_msgs/CO2SensorMsg
# Sensor description

float32 maxRange
float32 frequency
string frame_id

# sensor pose, relative to robot center
geometry_msgs/Pose2D pose 

================================================================================
MSG: stdr_msgs/SoundSensorMsg
# Sensor description

float32 maxRange
float32 frequency
float32 angleSpan
string frame_id

# sensor pose, relative to robot center
geometry_msgs/Pose2D pose 

================================================================================
MSG: stdr_msgs/ThermalSensorMsg
# Sensor description

float32 maxRange
float32 frequency
float32 angleSpan
string frame_id

# sensor pose, relative to robot center
geometry_msgs/Pose2D pose 

================================================================================
MSG: stdr_msgs/KinematicMsg
# Container for the kinematic model parameters. The parameters selected/
# are quite general. For a more accurate motion model a per-kinematic model
# approach should be followed.
# Parameters are in the form a_C_D, where C is affected by D.
# ux is the linear speed
# uy is the lateral speed (for omni vehicles)
# w is the angular speed
# g is a cofficient that directly affects the angular speed
# For more information check the MotionController::sampleVelocities function.

string type
float32 a_ux_ux
float32 a_ux_uy
float32 a_ux_w
float32 a_uy_ux
float32 a_uy_uy
float32 a_uy_w
float32 a_w_ux
float32 a_w_uy
float32 a_w_w
float32 a_g_ux
float32 a_g_uy
float32 a_g_w
"""
  __slots__ = ['robots']
  _slot_types = ['stdr_msgs/RobotIndexedMsg[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       robots

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RegisterGuiResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.robots is None:
        self.robots = []
    else:
      self.robots = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.robots)
      buff.write(_struct_I.pack(length))
      for val1 in self.robots:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v1 = val1.robot
        _v2 = _v1.initialPose
        _x = _v2
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        _v3 = _v1.footprint
        length = len(_v3.points)
        buff.write(_struct_I.pack(length))
        for val4 in _v3.points:
          _x = val4
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        buff.write(_get_struct_f().pack(_v3.radius))
        length = len(_v1.laserSensors)
        buff.write(_struct_I.pack(length))
        for val3 in _v1.laserSensors:
          _x = val3
          buff.write(_get_struct_4fi().pack(_x.maxAngle, _x.minAngle, _x.maxRange, _x.minRange, _x.numRays))
          _v4 = val3.noise
          _x = _v4
          buff.write(_get_struct_B2f().pack(_x.noise, _x.noiseMean, _x.noiseStd))
          buff.write(_get_struct_f().pack(val3.frequency))
          _x = val3.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _v5 = val3.pose
          _x = _v5
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        length = len(_v1.sonarSensors)
        buff.write(_struct_I.pack(length))
        for val3 in _v1.sonarSensors:
          _x = val3
          buff.write(_get_struct_4f().pack(_x.maxRange, _x.minRange, _x.coneAngle, _x.frequency))
          _v6 = val3.noise
          _x = _v6
          buff.write(_get_struct_B2f().pack(_x.noise, _x.noiseMean, _x.noiseStd))
          _x = val3.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _v7 = val3.pose
          _x = _v7
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        length = len(_v1.rfidSensors)
        buff.write(_struct_I.pack(length))
        for val3 in _v1.rfidSensors:
          _x = val3
          buff.write(_get_struct_4f().pack(_x.maxRange, _x.angleSpan, _x.signalCutoff, _x.frequency))
          _x = val3.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _v8 = val3.pose
          _x = _v8
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        length = len(_v1.co2Sensors)
        buff.write(_struct_I.pack(length))
        for val3 in _v1.co2Sensors:
          _x = val3
          buff.write(_get_struct_2f().pack(_x.maxRange, _x.frequency))
          _x = val3.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _v9 = val3.pose
          _x = _v9
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        length = len(_v1.soundSensors)
        buff.write(_struct_I.pack(length))
        for val3 in _v1.soundSensors:
          _x = val3
          buff.write(_get_struct_3f().pack(_x.maxRange, _x.frequency, _x.angleSpan))
          _x = val3.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _v10 = val3.pose
          _x = _v10
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        length = len(_v1.thermalSensors)
        buff.write(_struct_I.pack(length))
        for val3 in _v1.thermalSensors:
          _x = val3
          buff.write(_get_struct_3f().pack(_x.maxRange, _x.frequency, _x.angleSpan))
          _x = val3.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _v11 = val3.pose
          _x = _v11
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        _v12 = _v1.kinematicModel
        _x = _v12.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v12
        buff.write(_get_struct_12f().pack(_x.a_ux_ux, _x.a_ux_uy, _x.a_ux_w, _x.a_uy_ux, _x.a_uy_uy, _x.a_uy_w, _x.a_w_ux, _x.a_w_uy, _x.a_w_w, _x.a_g_ux, _x.a_g_uy, _x.a_g_w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.robots is None:
        self.robots = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.robots = []
      for i in range(0, length):
        val1 = stdr_msgs.msg.RobotIndexedMsg()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        _v13 = val1.robot
        _v14 = _v13.initialPose
        _x = _v14
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
        _v15 = _v13.footprint
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v15.points = []
        for i in range(0, length):
          val4 = geometry_msgs.msg.Point()
          _x = val4
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v15.points.append(val4)
        start = end
        end += 4
        (_v15.radius,) = _get_struct_f().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v13.laserSensors = []
        for i in range(0, length):
          val3 = stdr_msgs.msg.LaserSensorMsg()
          _x = val3
          start = end
          end += 20
          (_x.maxAngle, _x.minAngle, _x.maxRange, _x.minRange, _x.numRays,) = _get_struct_4fi().unpack(str[start:end])
          _v16 = val3.noise
          _x = _v16
          start = end
          end += 9
          (_x.noise, _x.noiseMean, _x.noiseStd,) = _get_struct_B2f().unpack(str[start:end])
          _v16.noise = bool(_v16.noise)
          start = end
          end += 4
          (val3.frequency,) = _get_struct_f().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.frame_id = str[start:end].decode('utf-8')
          else:
            val3.frame_id = str[start:end]
          _v17 = val3.pose
          _x = _v17
          start = end
          end += 24
          (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
          _v13.laserSensors.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v13.sonarSensors = []
        for i in range(0, length):
          val3 = stdr_msgs.msg.SonarSensorMsg()
          _x = val3
          start = end
          end += 16
          (_x.maxRange, _x.minRange, _x.coneAngle, _x.frequency,) = _get_struct_4f().unpack(str[start:end])
          _v18 = val3.noise
          _x = _v18
          start = end
          end += 9
          (_x.noise, _x.noiseMean, _x.noiseStd,) = _get_struct_B2f().unpack(str[start:end])
          _v18.noise = bool(_v18.noise)
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.frame_id = str[start:end].decode('utf-8')
          else:
            val3.frame_id = str[start:end]
          _v19 = val3.pose
          _x = _v19
          start = end
          end += 24
          (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
          _v13.sonarSensors.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v13.rfidSensors = []
        for i in range(0, length):
          val3 = stdr_msgs.msg.RfidSensorMsg()
          _x = val3
          start = end
          end += 16
          (_x.maxRange, _x.angleSpan, _x.signalCutoff, _x.frequency,) = _get_struct_4f().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.frame_id = str[start:end].decode('utf-8')
          else:
            val3.frame_id = str[start:end]
          _v20 = val3.pose
          _x = _v20
          start = end
          end += 24
          (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
          _v13.rfidSensors.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v13.co2Sensors = []
        for i in range(0, length):
          val3 = stdr_msgs.msg.CO2SensorMsg()
          _x = val3
          start = end
          end += 8
          (_x.maxRange, _x.frequency,) = _get_struct_2f().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.frame_id = str[start:end].decode('utf-8')
          else:
            val3.frame_id = str[start:end]
          _v21 = val3.pose
          _x = _v21
          start = end
          end += 24
          (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
          _v13.co2Sensors.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v13.soundSensors = []
        for i in range(0, length):
          val3 = stdr_msgs.msg.SoundSensorMsg()
          _x = val3
          start = end
          end += 12
          (_x.maxRange, _x.frequency, _x.angleSpan,) = _get_struct_3f().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.frame_id = str[start:end].decode('utf-8')
          else:
            val3.frame_id = str[start:end]
          _v22 = val3.pose
          _x = _v22
          start = end
          end += 24
          (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
          _v13.soundSensors.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v13.thermalSensors = []
        for i in range(0, length):
          val3 = stdr_msgs.msg.ThermalSensorMsg()
          _x = val3
          start = end
          end += 12
          (_x.maxRange, _x.frequency, _x.angleSpan,) = _get_struct_3f().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.frame_id = str[start:end].decode('utf-8')
          else:
            val3.frame_id = str[start:end]
          _v23 = val3.pose
          _x = _v23
          start = end
          end += 24
          (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
          _v13.thermalSensors.append(val3)
        _v24 = _v13.kinematicModel
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v24.type = str[start:end].decode('utf-8')
        else:
          _v24.type = str[start:end]
        _x = _v24
        start = end
        end += 48
        (_x.a_ux_ux, _x.a_ux_uy, _x.a_ux_w, _x.a_uy_ux, _x.a_uy_uy, _x.a_uy_w, _x.a_w_ux, _x.a_w_uy, _x.a_w_w, _x.a_g_ux, _x.a_g_uy, _x.a_g_w,) = _get_struct_12f().unpack(str[start:end])
        self.robots.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.robots)
      buff.write(_struct_I.pack(length))
      for val1 in self.robots:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v25 = val1.robot
        _v26 = _v25.initialPose
        _x = _v26
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        _v27 = _v25.footprint
        length = len(_v27.points)
        buff.write(_struct_I.pack(length))
        for val4 in _v27.points:
          _x = val4
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        buff.write(_get_struct_f().pack(_v27.radius))
        length = len(_v25.laserSensors)
        buff.write(_struct_I.pack(length))
        for val3 in _v25.laserSensors:
          _x = val3
          buff.write(_get_struct_4fi().pack(_x.maxAngle, _x.minAngle, _x.maxRange, _x.minRange, _x.numRays))
          _v28 = val3.noise
          _x = _v28
          buff.write(_get_struct_B2f().pack(_x.noise, _x.noiseMean, _x.noiseStd))
          buff.write(_get_struct_f().pack(val3.frequency))
          _x = val3.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _v29 = val3.pose
          _x = _v29
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        length = len(_v25.sonarSensors)
        buff.write(_struct_I.pack(length))
        for val3 in _v25.sonarSensors:
          _x = val3
          buff.write(_get_struct_4f().pack(_x.maxRange, _x.minRange, _x.coneAngle, _x.frequency))
          _v30 = val3.noise
          _x = _v30
          buff.write(_get_struct_B2f().pack(_x.noise, _x.noiseMean, _x.noiseStd))
          _x = val3.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _v31 = val3.pose
          _x = _v31
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        length = len(_v25.rfidSensors)
        buff.write(_struct_I.pack(length))
        for val3 in _v25.rfidSensors:
          _x = val3
          buff.write(_get_struct_4f().pack(_x.maxRange, _x.angleSpan, _x.signalCutoff, _x.frequency))
          _x = val3.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _v32 = val3.pose
          _x = _v32
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        length = len(_v25.co2Sensors)
        buff.write(_struct_I.pack(length))
        for val3 in _v25.co2Sensors:
          _x = val3
          buff.write(_get_struct_2f().pack(_x.maxRange, _x.frequency))
          _x = val3.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _v33 = val3.pose
          _x = _v33
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        length = len(_v25.soundSensors)
        buff.write(_struct_I.pack(length))
        for val3 in _v25.soundSensors:
          _x = val3
          buff.write(_get_struct_3f().pack(_x.maxRange, _x.frequency, _x.angleSpan))
          _x = val3.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _v34 = val3.pose
          _x = _v34
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        length = len(_v25.thermalSensors)
        buff.write(_struct_I.pack(length))
        for val3 in _v25.thermalSensors:
          _x = val3
          buff.write(_get_struct_3f().pack(_x.maxRange, _x.frequency, _x.angleSpan))
          _x = val3.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _v35 = val3.pose
          _x = _v35
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        _v36 = _v25.kinematicModel
        _x = _v36.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v36
        buff.write(_get_struct_12f().pack(_x.a_ux_ux, _x.a_ux_uy, _x.a_ux_w, _x.a_uy_ux, _x.a_uy_uy, _x.a_uy_w, _x.a_w_ux, _x.a_w_uy, _x.a_w_w, _x.a_g_ux, _x.a_g_uy, _x.a_g_w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.robots is None:
        self.robots = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.robots = []
      for i in range(0, length):
        val1 = stdr_msgs.msg.RobotIndexedMsg()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        _v37 = val1.robot
        _v38 = _v37.initialPose
        _x = _v38
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
        _v39 = _v37.footprint
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v39.points = []
        for i in range(0, length):
          val4 = geometry_msgs.msg.Point()
          _x = val4
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v39.points.append(val4)
        start = end
        end += 4
        (_v39.radius,) = _get_struct_f().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v37.laserSensors = []
        for i in range(0, length):
          val3 = stdr_msgs.msg.LaserSensorMsg()
          _x = val3
          start = end
          end += 20
          (_x.maxAngle, _x.minAngle, _x.maxRange, _x.minRange, _x.numRays,) = _get_struct_4fi().unpack(str[start:end])
          _v40 = val3.noise
          _x = _v40
          start = end
          end += 9
          (_x.noise, _x.noiseMean, _x.noiseStd,) = _get_struct_B2f().unpack(str[start:end])
          _v40.noise = bool(_v40.noise)
          start = end
          end += 4
          (val3.frequency,) = _get_struct_f().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.frame_id = str[start:end].decode('utf-8')
          else:
            val3.frame_id = str[start:end]
          _v41 = val3.pose
          _x = _v41
          start = end
          end += 24
          (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
          _v37.laserSensors.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v37.sonarSensors = []
        for i in range(0, length):
          val3 = stdr_msgs.msg.SonarSensorMsg()
          _x = val3
          start = end
          end += 16
          (_x.maxRange, _x.minRange, _x.coneAngle, _x.frequency,) = _get_struct_4f().unpack(str[start:end])
          _v42 = val3.noise
          _x = _v42
          start = end
          end += 9
          (_x.noise, _x.noiseMean, _x.noiseStd,) = _get_struct_B2f().unpack(str[start:end])
          _v42.noise = bool(_v42.noise)
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.frame_id = str[start:end].decode('utf-8')
          else:
            val3.frame_id = str[start:end]
          _v43 = val3.pose
          _x = _v43
          start = end
          end += 24
          (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
          _v37.sonarSensors.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v37.rfidSensors = []
        for i in range(0, length):
          val3 = stdr_msgs.msg.RfidSensorMsg()
          _x = val3
          start = end
          end += 16
          (_x.maxRange, _x.angleSpan, _x.signalCutoff, _x.frequency,) = _get_struct_4f().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.frame_id = str[start:end].decode('utf-8')
          else:
            val3.frame_id = str[start:end]
          _v44 = val3.pose
          _x = _v44
          start = end
          end += 24
          (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
          _v37.rfidSensors.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v37.co2Sensors = []
        for i in range(0, length):
          val3 = stdr_msgs.msg.CO2SensorMsg()
          _x = val3
          start = end
          end += 8
          (_x.maxRange, _x.frequency,) = _get_struct_2f().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.frame_id = str[start:end].decode('utf-8')
          else:
            val3.frame_id = str[start:end]
          _v45 = val3.pose
          _x = _v45
          start = end
          end += 24
          (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
          _v37.co2Sensors.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v37.soundSensors = []
        for i in range(0, length):
          val3 = stdr_msgs.msg.SoundSensorMsg()
          _x = val3
          start = end
          end += 12
          (_x.maxRange, _x.frequency, _x.angleSpan,) = _get_struct_3f().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.frame_id = str[start:end].decode('utf-8')
          else:
            val3.frame_id = str[start:end]
          _v46 = val3.pose
          _x = _v46
          start = end
          end += 24
          (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
          _v37.soundSensors.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v37.thermalSensors = []
        for i in range(0, length):
          val3 = stdr_msgs.msg.ThermalSensorMsg()
          _x = val3
          start = end
          end += 12
          (_x.maxRange, _x.frequency, _x.angleSpan,) = _get_struct_3f().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.frame_id = str[start:end].decode('utf-8')
          else:
            val3.frame_id = str[start:end]
          _v47 = val3.pose
          _x = _v47
          start = end
          end += 24
          (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
          _v37.thermalSensors.append(val3)
        _v48 = _v37.kinematicModel
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v48.type = str[start:end].decode('utf-8')
        else:
          _v48.type = str[start:end]
        _x = _v48
        start = end
        end += 48
        (_x.a_ux_ux, _x.a_ux_uy, _x.a_ux_w, _x.a_uy_ux, _x.a_uy_uy, _x.a_uy_w, _x.a_w_ux, _x.a_w_uy, _x.a_w_w, _x.a_g_ux, _x.a_g_uy, _x.a_g_w,) = _get_struct_12f().unpack(str[start:end])
        self.robots.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4fi = None
def _get_struct_4fi():
    global _struct_4fi
    if _struct_4fi is None:
        _struct_4fi = struct.Struct("<4fi")
    return _struct_4fi
_struct_12f = None
def _get_struct_12f():
    global _struct_12f
    if _struct_12f is None:
        _struct_12f = struct.Struct("<12f")
    return _struct_12f
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f
_struct_4f = None
def _get_struct_4f():
    global _struct_4f
    if _struct_4f is None:
        _struct_4f = struct.Struct("<4f")
    return _struct_4f
_struct_B2f = None
def _get_struct_B2f():
    global _struct_B2f
    if _struct_B2f is None:
        _struct_B2f = struct.Struct("<B2f")
    return _struct_B2f
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
class RegisterGui(object):
  _type          = 'stdr_msgs/RegisterGui'
  _md5sum = '5ba49d43b5f1ad43f9cbea11348366c5'
  _request_class  = RegisterGuiRequest
  _response_class = RegisterGuiResponse
