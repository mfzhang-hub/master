# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from stdr_msgs/LaserSensorMsg.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import stdr_msgs.msg
import geometry_msgs.msg

class LaserSensorMsg(genpy.Message):
  _md5sum = "32812e51fee48d19daf80d745cf2ad57"
  _type = "stdr_msgs/LaserSensorMsg"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Laser Sensor description
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
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta"""
  __slots__ = ['maxAngle','minAngle','maxRange','minRange','numRays','noise','frequency','frame_id','pose']
  _slot_types = ['float32','float32','float32','float32','int32','stdr_msgs/Noise','float32','string','geometry_msgs/Pose2D']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       maxAngle,minAngle,maxRange,minRange,numRays,noise,frequency,frame_id,pose

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LaserSensorMsg, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.maxAngle is None:
        self.maxAngle = 0.
      if self.minAngle is None:
        self.minAngle = 0.
      if self.maxRange is None:
        self.maxRange = 0.
      if self.minRange is None:
        self.minRange = 0.
      if self.numRays is None:
        self.numRays = 0
      if self.noise is None:
        self.noise = stdr_msgs.msg.Noise()
      if self.frequency is None:
        self.frequency = 0.
      if self.frame_id is None:
        self.frame_id = ''
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose2D()
    else:
      self.maxAngle = 0.
      self.minAngle = 0.
      self.maxRange = 0.
      self.minRange = 0.
      self.numRays = 0
      self.noise = stdr_msgs.msg.Noise()
      self.frequency = 0.
      self.frame_id = ''
      self.pose = geometry_msgs.msg.Pose2D()

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
      _x = self
      buff.write(_get_struct_4fiB3f().pack(_x.maxAngle, _x.minAngle, _x.maxRange, _x.minRange, _x.numRays, _x.noise.noise, _x.noise.noiseMean, _x.noise.noiseStd, _x.frequency))
      _x = self.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d().pack(_x.pose.x, _x.pose.y, _x.pose.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.noise is None:
        self.noise = stdr_msgs.msg.Noise()
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose2D()
      end = 0
      _x = self
      start = end
      end += 33
      (_x.maxAngle, _x.minAngle, _x.maxRange, _x.minRange, _x.numRays, _x.noise.noise, _x.noise.noiseMean, _x.noise.noiseStd, _x.frequency,) = _get_struct_4fiB3f().unpack(str[start:end])
      self.noise.noise = bool(self.noise.noise)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frame_id = str[start:end].decode('utf-8')
      else:
        self.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.pose.x, _x.pose.y, _x.pose.theta,) = _get_struct_3d().unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_4fiB3f().pack(_x.maxAngle, _x.minAngle, _x.maxRange, _x.minRange, _x.numRays, _x.noise.noise, _x.noise.noiseMean, _x.noise.noiseStd, _x.frequency))
      _x = self.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d().pack(_x.pose.x, _x.pose.y, _x.pose.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.noise is None:
        self.noise = stdr_msgs.msg.Noise()
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose2D()
      end = 0
      _x = self
      start = end
      end += 33
      (_x.maxAngle, _x.minAngle, _x.maxRange, _x.minRange, _x.numRays, _x.noise.noise, _x.noise.noiseMean, _x.noise.noiseStd, _x.frequency,) = _get_struct_4fiB3f().unpack(str[start:end])
      self.noise.noise = bool(self.noise.noise)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frame_id = str[start:end].decode('utf-8')
      else:
        self.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.pose.x, _x.pose.y, _x.pose.theta,) = _get_struct_3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4fiB3f = None
def _get_struct_4fiB3f():
    global _struct_4fiB3f
    if _struct_4fiB3f is None:
        _struct_4fiB3f = struct.Struct("<4fiB3f")
    return _struct_4fiB3f
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
