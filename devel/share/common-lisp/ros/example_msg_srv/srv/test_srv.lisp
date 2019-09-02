; Auto-generated. Do not edit!


(cl:in-package example_msg_srv-srv)


;//! \htmlinclude test_srv-request.msg.html

(cl:defclass <test_srv-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (y
    :reader y
    :initarg :y
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (z
    :reader z
    :initarg :z
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass test_srv-request (<test_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <test_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'test_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name example_msg_srv-srv:<test_srv-request> is deprecated: use example_msg_srv-srv:test_srv-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <test_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_msg_srv-srv:x-val is deprecated.  Use example_msg_srv-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <test_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_msg_srv-srv:y-val is deprecated.  Use example_msg_srv-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <test_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_msg_srv-srv:z-val is deprecated.  Use example_msg_srv-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <test_srv-request>) ostream)
  "Serializes a message object of type '<test_srv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'z) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <test_srv-request>) istream)
  "Deserializes a message object of type '<test_srv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'z) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<test_srv-request>)))
  "Returns string type for a service object of type '<test_srv-request>"
  "example_msg_srv/test_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'test_srv-request)))
  "Returns string type for a service object of type 'test_srv-request"
  "example_msg_srv/test_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<test_srv-request>)))
  "Returns md5sum for a message object of type '<test_srv-request>"
  "faec36214f3d0e984c1a2fa8299d68ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'test_srv-request)))
  "Returns md5sum for a message object of type 'test_srv-request"
  "faec36214f3d0e984c1a2fa8299d68ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<test_srv-request>)))
  "Returns full string definition for message of type '<test_srv-request>"
  (cl:format cl:nil "std_msgs/Float64 x~%std_msgs/Float64 y~%std_msgs/Float64 z~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'test_srv-request)))
  "Returns full string definition for message of type 'test_srv-request"
  (cl:format cl:nil "std_msgs/Float64 x~%std_msgs/Float64 y~%std_msgs/Float64 z~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <test_srv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'z))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <test_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'test_srv-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
;//! \htmlinclude test_srv-response.msg.html

(cl:defclass <test_srv-response> (roslisp-msg-protocol:ros-message)
  ((q
    :reader q
    :initarg :q
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass test_srv-response (<test_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <test_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'test_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name example_msg_srv-srv:<test_srv-response> is deprecated: use example_msg_srv-srv:test_srv-response instead.")))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <test_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_msg_srv-srv:q-val is deprecated.  Use example_msg_srv-srv:q instead.")
  (q m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <test_srv-response>) ostream)
  "Serializes a message object of type '<test_srv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'q) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <test_srv-response>) istream)
  "Deserializes a message object of type '<test_srv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'q) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<test_srv-response>)))
  "Returns string type for a service object of type '<test_srv-response>"
  "example_msg_srv/test_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'test_srv-response)))
  "Returns string type for a service object of type 'test_srv-response"
  "example_msg_srv/test_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<test_srv-response>)))
  "Returns md5sum for a message object of type '<test_srv-response>"
  "faec36214f3d0e984c1a2fa8299d68ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'test_srv-response)))
  "Returns md5sum for a message object of type 'test_srv-response"
  "faec36214f3d0e984c1a2fa8299d68ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<test_srv-response>)))
  "Returns full string definition for message of type '<test_srv-response>"
  (cl:format cl:nil "geometry_msgs/Quaternion q~%~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'test_srv-response)))
  "Returns full string definition for message of type 'test_srv-response"
  (cl:format cl:nil "geometry_msgs/Quaternion q~%~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <test_srv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'q))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <test_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'test_srv-response
    (cl:cons ':q (q msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'test_srv)))
  'test_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'test_srv)))
  'test_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'test_srv)))
  "Returns string type for a service object of type '<test_srv>"
  "example_msg_srv/test_srv")