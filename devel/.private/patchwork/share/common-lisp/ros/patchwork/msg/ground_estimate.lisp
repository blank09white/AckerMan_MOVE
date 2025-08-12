; Auto-generated. Do not edit!


(cl:in-package patchwork-msg)


;//! \htmlinclude ground_estimate.msg.html

(cl:defclass <ground_estimate> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (curr
    :reader curr
    :initarg :curr
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (ground
    :reader ground
    :initarg :ground
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass ground_estimate (<ground_estimate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ground_estimate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ground_estimate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name patchwork-msg:<ground_estimate> is deprecated: use patchwork-msg:ground_estimate instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ground_estimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patchwork-msg:header-val is deprecated.  Use patchwork-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'curr-val :lambda-list '(m))
(cl:defmethod curr-val ((m <ground_estimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patchwork-msg:curr-val is deprecated.  Use patchwork-msg:curr instead.")
  (curr m))

(cl:ensure-generic-function 'ground-val :lambda-list '(m))
(cl:defmethod ground-val ((m <ground_estimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patchwork-msg:ground-val is deprecated.  Use patchwork-msg:ground instead.")
  (ground m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ground_estimate>) ostream)
  "Serializes a message object of type '<ground_estimate>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'curr) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ground) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ground_estimate>) istream)
  "Deserializes a message object of type '<ground_estimate>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'curr) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ground) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ground_estimate>)))
  "Returns string type for a message object of type '<ground_estimate>"
  "patchwork/ground_estimate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ground_estimate)))
  "Returns string type for a message object of type 'ground_estimate"
  "patchwork/ground_estimate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ground_estimate>)))
  "Returns md5sum for a message object of type '<ground_estimate>"
  "5dd1550f6dc7108b050a8854acb1a65e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ground_estimate)))
  "Returns md5sum for a message object of type 'ground_estimate"
  "5dd1550f6dc7108b050a8854acb1a65e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ground_estimate>)))
  "Returns full string definition for message of type '<ground_estimate>"
  (cl:format cl:nil "std_msgs/Header header~%sensor_msgs/PointCloud2 curr~%sensor_msgs/PointCloud2 ground # estimate~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ground_estimate)))
  "Returns full string definition for message of type 'ground_estimate"
  (cl:format cl:nil "std_msgs/Header header~%sensor_msgs/PointCloud2 curr~%sensor_msgs/PointCloud2 ground # estimate~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ground_estimate>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'curr))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ground))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ground_estimate>))
  "Converts a ROS message object to a list"
  (cl:list 'ground_estimate
    (cl:cons ':header (header msg))
    (cl:cons ':curr (curr msg))
    (cl:cons ':ground (ground msg))
))
