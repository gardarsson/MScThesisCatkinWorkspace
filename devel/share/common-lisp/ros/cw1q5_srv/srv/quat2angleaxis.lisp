; Auto-generated. Do not edit!


(cl:in-package cw1q5_srv-srv)


;//! \htmlinclude quat2angleaxis-request.msg.html

(cl:defclass <quat2angleaxis-request> (roslisp-msg-protocol:ros-message)
  ((q
    :reader q
    :initarg :q
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass quat2angleaxis-request (<quat2angleaxis-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <quat2angleaxis-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'quat2angleaxis-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cw1q5_srv-srv:<quat2angleaxis-request> is deprecated: use cw1q5_srv-srv:quat2angleaxis-request instead.")))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <quat2angleaxis-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cw1q5_srv-srv:q-val is deprecated.  Use cw1q5_srv-srv:q instead.")
  (q m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <quat2angleaxis-request>) ostream)
  "Serializes a message object of type '<quat2angleaxis-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'q) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <quat2angleaxis-request>) istream)
  "Deserializes a message object of type '<quat2angleaxis-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'q) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<quat2angleaxis-request>)))
  "Returns string type for a service object of type '<quat2angleaxis-request>"
  "cw1q5_srv/quat2angleaxisRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2angleaxis-request)))
  "Returns string type for a service object of type 'quat2angleaxis-request"
  "cw1q5_srv/quat2angleaxisRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<quat2angleaxis-request>)))
  "Returns md5sum for a message object of type '<quat2angleaxis-request>"
  "41cba6f4cdcd1c3708cfcf0ee27a897a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'quat2angleaxis-request)))
  "Returns md5sum for a message object of type 'quat2angleaxis-request"
  "41cba6f4cdcd1c3708cfcf0ee27a897a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<quat2angleaxis-request>)))
  "Returns full string definition for message of type '<quat2angleaxis-request>"
  (cl:format cl:nil "geometry_msgs/Quaternion q~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'quat2angleaxis-request)))
  "Returns full string definition for message of type 'quat2angleaxis-request"
  (cl:format cl:nil "geometry_msgs/Quaternion q~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <quat2angleaxis-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'q))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <quat2angleaxis-request>))
  "Converts a ROS message object to a list"
  (cl:list 'quat2angleaxis-request
    (cl:cons ':q (q msg))
))
;//! \htmlinclude quat2angleaxis-response.msg.html

(cl:defclass <quat2angleaxis-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass quat2angleaxis-response (<quat2angleaxis-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <quat2angleaxis-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'quat2angleaxis-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cw1q5_srv-srv:<quat2angleaxis-response> is deprecated: use cw1q5_srv-srv:quat2angleaxis-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <quat2angleaxis-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cw1q5_srv-srv:x-val is deprecated.  Use cw1q5_srv-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <quat2angleaxis-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cw1q5_srv-srv:y-val is deprecated.  Use cw1q5_srv-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <quat2angleaxis-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cw1q5_srv-srv:z-val is deprecated.  Use cw1q5_srv-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <quat2angleaxis-response>) ostream)
  "Serializes a message object of type '<quat2angleaxis-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'z) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <quat2angleaxis-response>) istream)
  "Deserializes a message object of type '<quat2angleaxis-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'z) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<quat2angleaxis-response>)))
  "Returns string type for a service object of type '<quat2angleaxis-response>"
  "cw1q5_srv/quat2angleaxisResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2angleaxis-response)))
  "Returns string type for a service object of type 'quat2angleaxis-response"
  "cw1q5_srv/quat2angleaxisResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<quat2angleaxis-response>)))
  "Returns md5sum for a message object of type '<quat2angleaxis-response>"
  "41cba6f4cdcd1c3708cfcf0ee27a897a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'quat2angleaxis-response)))
  "Returns md5sum for a message object of type 'quat2angleaxis-response"
  "41cba6f4cdcd1c3708cfcf0ee27a897a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<quat2angleaxis-response>)))
  "Returns full string definition for message of type '<quat2angleaxis-response>"
  (cl:format cl:nil "std_msgs/Float64 x~%std_msgs/Float64 y~%std_msgs/Float64 z~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'quat2angleaxis-response)))
  "Returns full string definition for message of type 'quat2angleaxis-response"
  (cl:format cl:nil "std_msgs/Float64 x~%std_msgs/Float64 y~%std_msgs/Float64 z~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <quat2angleaxis-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'z))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <quat2angleaxis-response>))
  "Converts a ROS message object to a list"
  (cl:list 'quat2angleaxis-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'quat2angleaxis)))
  'quat2angleaxis-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'quat2angleaxis)))
  'quat2angleaxis-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2angleaxis)))
  "Returns string type for a service object of type '<quat2angleaxis>"
  "cw1q5_srv/quat2angleaxis")