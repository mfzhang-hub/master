# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from lxind_msgs/MapMetaData.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class MapMetaData(genpy.Message):
  _md5sum = "6bf1e47e51e46074d8693b0726c02fb3"
  _type = "lxind_msgs/MapMetaData"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# map name
string map_name             # map name, ex.outmzpick
string map_path_prefix      # path without suffix, ex: /home/fr1511b/lxind_ws/install/share/lxind_nav/maps/

# Map width [cells]
uint32 width
# Map height [cells]
uint32 height

# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
float32 resolution


####################################################
bool is_switched_map             # 是否是切换地图 
geometry_msgs/Pose2D initial_pose  # 切换地图后的初始点
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta"""
  __slots__ = ['map_name','map_path_prefix','width','height','origin','resolution','is_switched_map','initial_pose']
  _slot_types = ['string','string','uint32','uint32','geometry_msgs/Pose','float32','bool','geometry_msgs/Pose2D']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       map_name,map_path_prefix,width,height,origin,resolution,is_switched_map,initial_pose

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MapMetaData, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.map_name is None:
        self.map_name = ''
      if self.map_path_prefix is None:
        self.map_path_prefix = ''
      if self.width is None:
        self.width = 0
      if self.height is None:
        self.height = 0
      if self.origin is None:
        self.origin = geometry_msgs.msg.Pose()
      if self.resolution is None:
        self.resolution = 0.
      if self.is_switched_map is None:
        self.is_switched_map = False
      if self.initial_pose is None:
        self.initial_pose = geometry_msgs.msg.Pose2D()
    else:
      self.map_name = ''
      self.map_path_prefix = ''
      self.width = 0
      self.height = 0
      self.origin = geometry_msgs.msg.Pose()
      self.resolution = 0.
      self.is_switched_map = False
      self.initial_pose = geometry_msgs.msg.Pose2D()

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
      _x = self.map_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.map_path_prefix
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I7dfB3d().pack(_x.width, _x.height, _x.origin.position.x, _x.origin.position.y, _x.origin.position.z, _x.origin.orientation.x, _x.origin.orientation.y, _x.origin.orientation.z, _x.origin.orientation.w, _x.resolution, _x.is_switched_map, _x.initial_pose.x, _x.initial_pose.y, _x.initial_pose.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.origin is None:
        self.origin = geometry_msgs.msg.Pose()
      if self.initial_pose is None:
        self.initial_pose = geometry_msgs.msg.Pose2D()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.map_name = str[start:end].decode('utf-8')
      else:
        self.map_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.map_path_prefix = str[start:end].decode('utf-8')
      else:
        self.map_path_prefix = str[start:end]
      _x = self
      start = end
      end += 93
      (_x.width, _x.height, _x.origin.position.x, _x.origin.position.y, _x.origin.position.z, _x.origin.orientation.x, _x.origin.orientation.y, _x.origin.orientation.z, _x.origin.orientation.w, _x.resolution, _x.is_switched_map, _x.initial_pose.x, _x.initial_pose.y, _x.initial_pose.theta,) = _get_struct_2I7dfB3d().unpack(str[start:end])
      self.is_switched_map = bool(self.is_switched_map)
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
      _x = self.map_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.map_path_prefix
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I7dfB3d().pack(_x.width, _x.height, _x.origin.position.x, _x.origin.position.y, _x.origin.position.z, _x.origin.orientation.x, _x.origin.orientation.y, _x.origin.orientation.z, _x.origin.orientation.w, _x.resolution, _x.is_switched_map, _x.initial_pose.x, _x.initial_pose.y, _x.initial_pose.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.origin is None:
        self.origin = geometry_msgs.msg.Pose()
      if self.initial_pose is None:
        self.initial_pose = geometry_msgs.msg.Pose2D()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.map_name = str[start:end].decode('utf-8')
      else:
        self.map_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.map_path_prefix = str[start:end].decode('utf-8')
      else:
        self.map_path_prefix = str[start:end]
      _x = self
      start = end
      end += 93
      (_x.width, _x.height, _x.origin.position.x, _x.origin.position.y, _x.origin.position.z, _x.origin.orientation.x, _x.origin.orientation.y, _x.origin.orientation.z, _x.origin.orientation.w, _x.resolution, _x.is_switched_map, _x.initial_pose.x, _x.initial_pose.y, _x.initial_pose.theta,) = _get_struct_2I7dfB3d().unpack(str[start:end])
      self.is_switched_map = bool(self.is_switched_map)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I7dfB3d = None
def _get_struct_2I7dfB3d():
    global _struct_2I7dfB3d
    if _struct_2I7dfB3d is None:
        _struct_2I7dfB3d = struct.Struct("<2I7dfB3d")
    return _struct_2I7dfB3d
