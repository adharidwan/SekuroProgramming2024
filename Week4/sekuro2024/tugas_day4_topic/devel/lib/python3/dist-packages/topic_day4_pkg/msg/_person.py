# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from topic_day4_pkg/person.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class person(genpy.Message):
  _md5sum = "642dd92b70eae635c30acd8224032ab7"
  _type = "topic_day4_pkg/person"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string nama
int64 usia
float64 tinggi
bool kehadiran"""
  __slots__ = ['nama','usia','tinggi','kehadiran']
  _slot_types = ['string','int64','float64','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       nama,usia,tinggi,kehadiran

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(person, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.nama is None:
        self.nama = ''
      if self.usia is None:
        self.usia = 0
      if self.tinggi is None:
        self.tinggi = 0.
      if self.kehadiran is None:
        self.kehadiran = False
    else:
      self.nama = ''
      self.usia = 0
      self.tinggi = 0.
      self.kehadiran = False

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
      _x = self.nama
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_qdB().pack(_x.usia, _x.tinggi, _x.kehadiran))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.nama = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.nama = str[start:end]
      _x = self
      start = end
      end += 17
      (_x.usia, _x.tinggi, _x.kehadiran,) = _get_struct_qdB().unpack(str[start:end])
      self.kehadiran = bool(self.kehadiran)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.nama
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_qdB().pack(_x.usia, _x.tinggi, _x.kehadiran))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.nama = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.nama = str[start:end]
      _x = self
      start = end
      end += 17
      (_x.usia, _x.tinggi, _x.kehadiran,) = _get_struct_qdB().unpack(str[start:end])
      self.kehadiran = bool(self.kehadiran)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_qdB = None
def _get_struct_qdB():
    global _struct_qdB
    if _struct_qdB is None:
        _struct_qdB = struct.Struct("<qdB")
    return _struct_qdB
