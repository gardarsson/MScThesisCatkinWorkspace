; Auto-generated. Do not edit!


(cl:in-package cw1q5_srv-srv)


;//! \htmlinclude rotmat2quat-request.msg.html

(cl:defclass <rotmat2quat-request> (roslisp-msg-protocol:ros-message)
  ((r1
    :reader r1
    :initarg :r1
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (r2
    :reader r2
    :initarg :r2
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (r3
    :reader r3
    :initarg :r3
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray)))
)

(cl:defclass rotmat2quat-request (<rotmat2quat-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rotmat2quat-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rotmat2quat-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cw1q5_srv-srv:<rotmat2quat-request> is deprecated: use cw1q5_srv-srv:rotmat2quat-request instead.")))

(cl:ensure-generic-function 'r1-val :lambda-list '(m))
(cl:defmethod r1-val ((m <rotmat2quat-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cw1q5_srv-srv:r1-val is deprecated.  Use cw1q5_srv-srv:r1 instead.")
  (r1 m))

(cl:ensure-generic-function 'r2-val :lambda-list '(m))
(cl:defmethod r2-val ((m <rotmat2quat-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cw1q5_srv-srv:r2-val is deprecated.  Use cw1q5_srv-srv:r2 instead.")
  (r2 m))

(cl:ensure-generic-function 'r3-val :lambda-list '(m))
(cl:defmethod r3-val ((m <rotmat2quat-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cw1q5_srv-srv:r3-val is deprecated.  Use cw1q5_srv-srv:r3 instead.")
  (r3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rotmat2quat-request>) ostream)
  "Serializes a message object of type '<rotmat2quat-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r3) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rotmat2quat-request>) istream)
  "Deserializes a message object of type '<rotmat2quat-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r3) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rotmat2quat-request>)))
  "Returns string type for a service object of type '<rotmat2quat-request>"
  "cw1q5_srv/rotmat2quatRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rotmat2quat-request)))
  "Returns string type for a service object of type 'rotmat2quat-request"
  "cw1q5_srv/rotmat2quatRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rotmat2quat-request>)))
  "Returns md5sum for a message object of type '<rotmat2quat-request>"
  "625e07167e0995402d191dbba948f099")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rotmat2quat-request)))
  "Returns md5sum for a message object of type 'rotmat2quat-request"
  "625e07167e0995402d191dbba948f099")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rotmat2quat-request>)))
  "Returns full string definition for message of type '<rotmat2quat-request>"
  (cl:format cl:nil "std_msgs/Float64MultiArray r1~%std_msgs/Float64MultiArray r2~%std_msgs/Float64MultiArray r3~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rotmat2quat-request)))
  "Returns full string definition for message of type 'rotmat2quat-request"
  (cl:format cl:nil "std_msgs/Float64MultiArray r1~%std_msgs/Float64MultiArray r2~%std_msgs/Float64MultiArray r3~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rotmat2quat-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r3))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rotmat2quat-request>))
  "Converts a ROS message object to a list"
  (cl:list 'rotmat2quat-request
    (cl:cons ':r1 (r1 msg))
    (cl:cons ':r2 (r2 msg))
    (cl:cons ':r3 (r3 msg))
))
;//! \htmlinclude rotmat2quat-response.msg.html

(cl:defclass <rotmat2quat-response> (roslisp-msg-protocol:ros-message)
  ((q
    :reader q
    :initarg :q
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass rotmat2quat-response (<rotmat2quat-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rotmat2quat-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rotmat2quat-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cw1q5_srv-srv:<rotmat2quat-response> is deprecated: use cw1q5_srv-srv:rotmat2quat-response instead.")))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <rotmat2quat-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cw1q5_srv-srv:q-val is deprecated.  Use cw1q5_srv-srv:q instead.")
  (q m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rotmat2quat-response>) ostream)
  "Serializes a message object of type '<rotmat2quat-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'q) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rotmat2quat-response>) istream)
  "Deserializes a message object of type '<rotmat2quat-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'q) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rotmat2quat-response>)))
  "Returns string type for a service object of type '<rotmat2quat-response>"
  "cw1q5_srv/rotmat2quatResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rotmat2quat-response)))
  "Returns string type for a service object of type 'rotmat2quat-response"
  "cw1q5_srv/rotmat2quatResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rotmat2quat-response>)))
  "Returns md5sum for a message object of type '<rotmat2quat-response>"
  "625e07167e0995402d191dbba948f099")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rotmat2quat-response)))
  "Returns md5sum for a message object of type 'rotmat2quat-response"
  "625e07167e0995402d191dbba948f099")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rotmat2quat-response>)))
  "Returns full string definition for message of type '<rotmat2quat-response>"
  (cl:format cl:nil "geometry_msgs/Quaternion q~%~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rotmat2quat-response)))
  "Returns full string definition for message of type 'rotmat2quat-response"
  (cl:format cl:nil "geometry_msgs/Quaternion q~%~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rotmat2quat-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'q))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rotmat2quat-response>))
  "Converts a ROS message object to a list"
  (cl:list 'rotmat2quat-response
    (cl:cons ':q (q msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'rotmat2quat)))
  'rotmat2quat-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'rotmat2quat)))
  'rotmat2quat-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rotmat2quat)))
  "Returns string type for a service object of type '<rotmat2quat>"
  "cw1q5_srv/rotmat2quat")