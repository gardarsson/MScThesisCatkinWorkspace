; Auto-generated. Do not edit!


(cl:in-package cw1q5_srv-srv)


;//! \htmlinclude quat2zyx-request.msg.html

(cl:defclass <quat2zyx-request> (roslisp-msg-protocol:ros-message)
  ((q
    :reader q
    :initarg :q
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass quat2zyx-request (<quat2zyx-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <quat2zyx-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'quat2zyx-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cw1q5_srv-srv:<quat2zyx-request> is deprecated: use cw1q5_srv-srv:quat2zyx-request instead.")))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <quat2zyx-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cw1q5_srv-srv:q-val is deprecated.  Use cw1q5_srv-srv:q instead.")
  (q m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <quat2zyx-request>) ostream)
  "Serializes a message object of type '<quat2zyx-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'q) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <quat2zyx-request>) istream)
  "Deserializes a message object of type '<quat2zyx-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'q) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<quat2zyx-request>)))
  "Returns string type for a service object of type '<quat2zyx-request>"
  "cw1q5_srv/quat2zyxRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2zyx-request)))
  "Returns string type for a service object of type 'quat2zyx-request"
  "cw1q5_srv/quat2zyxRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<quat2zyx-request>)))
  "Returns md5sum for a message object of type '<quat2zyx-request>"
  "41cba6f4cdcd1c3708cfcf0ee27a897a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'quat2zyx-request)))
  "Returns md5sum for a message object of type 'quat2zyx-request"
  "41cba6f4cdcd1c3708cfcf0ee27a897a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<quat2zyx-request>)))
  "Returns full string definition for message of type '<quat2zyx-request>"
  (cl:format cl:nil "geometry_msgs/Quaternion q~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'quat2zyx-request)))
  "Returns full string definition for message of type 'quat2zyx-request"
  (cl:format cl:nil "geometry_msgs/Quaternion q~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <quat2zyx-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'q))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <quat2zyx-request>))
  "Converts a ROS message object to a list"
  (cl:list 'quat2zyx-request
    (cl:cons ':q (q msg))
))
;//! \htmlinclude quat2zyx-response.msg.html

(cl:defclass <quat2zyx-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass quat2zyx-response (<quat2zyx-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <quat2zyx-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'quat2zyx-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cw1q5_srv-srv:<quat2zyx-response> is deprecated: use cw1q5_srv-srv:quat2zyx-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <quat2zyx-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cw1q5_srv-srv:x-val is deprecated.  Use cw1q5_srv-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <quat2zyx-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cw1q5_srv-srv:y-val is deprecated.  Use cw1q5_srv-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <quat2zyx-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cw1q5_srv-srv:z-val is deprecated.  Use cw1q5_srv-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <quat2zyx-response>) ostream)
  "Serializes a message object of type '<quat2zyx-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'z) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <quat2zyx-response>) istream)
  "Deserializes a message object of type '<quat2zyx-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'z) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<quat2zyx-response>)))
  "Returns string type for a service object of type '<quat2zyx-response>"
  "cw1q5_srv/quat2zyxResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2zyx-response)))
  "Returns string type for a service object of type 'quat2zyx-response"
  "cw1q5_srv/quat2zyxResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<quat2zyx-response>)))
  "Returns md5sum for a message object of type '<quat2zyx-response>"
  "41cba6f4cdcd1c3708cfcf0ee27a897a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'quat2zyx-response)))
  "Returns md5sum for a message object of type 'quat2zyx-response"
  "41cba6f4cdcd1c3708cfcf0ee27a897a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<quat2zyx-response>)))
  "Returns full string definition for message of type '<quat2zyx-response>"
  (cl:format cl:nil "std_msgs/Float64 x~%std_msgs/Float64 y~%std_msgs/Float64 z~%~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'quat2zyx-response)))
  "Returns full string definition for message of type 'quat2zyx-response"
  (cl:format cl:nil "std_msgs/Float64 x~%std_msgs/Float64 y~%std_msgs/Float64 z~%~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <quat2zyx-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'z))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <quat2zyx-response>))
  "Converts a ROS message object to a list"
  (cl:list 'quat2zyx-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'quat2zyx)))
  'quat2zyx-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'quat2zyx)))
  'quat2zyx-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2zyx)))
  "Returns string type for a service object of type '<quat2zyx>"
  "cw1q5_srv/quat2zyx")