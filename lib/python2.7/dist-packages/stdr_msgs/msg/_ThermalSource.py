# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from stdr_msgs/ThermalSource.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class ThermalSource(genpy.Message):
  _md5sum = "b732f325d4ba0a2977192d50dca59310"
  _type = "stdr_msgs/ThermalSource"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Source description

string id
float32 degrees

# sensor pose, relative to the map origin
geometry_msgs/Pose2D pose 

================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta"""
  __slots__ = ['id','degrees','pose']
  _slot_types = ['string','float32','geometry_msgs/Pose2D']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,degrees,pose

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ThermalSource, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = ''
      if self.degrees is None:
        self.degrees = 0.
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose2D()
    else:
      self.id = ''
      self.degrees = 0.
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
      _x = self.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_f3d().pack(_x.degrees, _x.pose.x, _x.pose.y, _x.pose.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose2D()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8')
      else:
        self.id = str[start:end]
      _x = self
      start = end
      end += 28
      (_x.degrees, _x.pose.x, _x.pose.y, _x.pose.theta,) = _get_struct_f3d().unpack(str[start:end])
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
      _x = self.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_f3d().pack(_x.degrees, _x.pose.x, _x.pose.y, _x.pose.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose2D()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8')
      else:
        self.id = str[start:end]
      _x = self
      start = end
      end += 28
      (_x.degrees, _x.pose.x, _x.pose.y, _x.pose.theta,) = _get_struct_f3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f3d = None
def _get_struct_f3d():
    global _struct_f3d
    if _struct_f3d is None:
        _struct_f3d = struct.Struct("<f3d")
    return _struct_f3d
