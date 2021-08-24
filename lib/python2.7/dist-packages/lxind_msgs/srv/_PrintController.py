# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from lxind_msgs/PrintControllerRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class PrintControllerRequest(genpy.Message):
  _md5sum = "b4476dda7525fdc4a05c42d0cc6b128e"
  _type = "lxind_msgs/PrintControllerRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int8 s_task_id
int8 y_task_id
int8 z_task_id
int8 z2_task_id
float32 s_move
float32 y_move
float32 z_move
float32 z2_move

"""
  __slots__ = ['s_task_id','y_task_id','z_task_id','z2_task_id','s_move','y_move','z_move','z2_move']
  _slot_types = ['int8','int8','int8','int8','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       s_task_id,y_task_id,z_task_id,z2_task_id,s_move,y_move,z_move,z2_move

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PrintControllerRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.s_task_id is None:
        self.s_task_id = 0
      if self.y_task_id is None:
        self.y_task_id = 0
      if self.z_task_id is None:
        self.z_task_id = 0
      if self.z2_task_id is None:
        self.z2_task_id = 0
      if self.s_move is None:
        self.s_move = 0.
      if self.y_move is None:
        self.y_move = 0.
      if self.z_move is None:
        self.z_move = 0.
      if self.z2_move is None:
        self.z2_move = 0.
    else:
      self.s_task_id = 0
      self.y_task_id = 0
      self.z_task_id = 0
      self.z2_task_id = 0
      self.s_move = 0.
      self.y_move = 0.
      self.z_move = 0.
      self.z2_move = 0.

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
      buff.write(_get_struct_4b4f().pack(_x.s_task_id, _x.y_task_id, _x.z_task_id, _x.z2_task_id, _x.s_move, _x.y_move, _x.z_move, _x.z2_move))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 20
      (_x.s_task_id, _x.y_task_id, _x.z_task_id, _x.z2_task_id, _x.s_move, _x.y_move, _x.z_move, _x.z2_move,) = _get_struct_4b4f().unpack(str[start:end])
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
      buff.write(_get_struct_4b4f().pack(_x.s_task_id, _x.y_task_id, _x.z_task_id, _x.z2_task_id, _x.s_move, _x.y_move, _x.z_move, _x.z2_move))
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
      _x = self
      start = end
      end += 20
      (_x.s_task_id, _x.y_task_id, _x.z_task_id, _x.z2_task_id, _x.s_move, _x.y_move, _x.z_move, _x.z2_move,) = _get_struct_4b4f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4b4f = None
def _get_struct_4b4f():
    global _struct_4b4f
    if _struct_4b4f is None:
        _struct_4b4f = struct.Struct("<4b4f")
    return _struct_4b4f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from lxind_msgs/PrintControllerResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class PrintControllerResponse(genpy.Message):
  _md5sum = "8d9c3b918a0afafe09791ef8d7853918"
  _type = "lxind_msgs/PrintControllerResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool succeed
"""
  __slots__ = ['succeed']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       succeed

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PrintControllerResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.succeed is None:
        self.succeed = False
    else:
      self.succeed = False

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
      buff.write(_get_struct_B().pack(self.succeed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 1
      (self.succeed,) = _get_struct_B().unpack(str[start:end])
      self.succeed = bool(self.succeed)
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
      buff.write(_get_struct_B().pack(self.succeed))
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
      start = end
      end += 1
      (self.succeed,) = _get_struct_B().unpack(str[start:end])
      self.succeed = bool(self.succeed)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class PrintController(object):
  _type          = 'lxind_msgs/PrintController'
  _md5sum = '162d9c2f48b0b1d5bddcace537023466'
  _request_class  = PrintControllerRequest
  _response_class = PrintControllerResponse
