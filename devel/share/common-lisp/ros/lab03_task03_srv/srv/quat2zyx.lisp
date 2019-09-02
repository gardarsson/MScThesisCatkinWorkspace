; Auto-generated. Do not edit!


(cl:in-package lab03_task03_srv-srv)


;//! \htmlinclude quat2zyx-request.msg.html

(cl:defclass <quat2zyx-request> (roslisp-msg-protocol:ros-message)
  ((p
    :reader p
    :initarg :p
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass quat2zyx-request (<quat2zyx-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <quat2zyx-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'quat2zyx-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab03_task03_srv-srv:<quat2zyx-request> is deprecated: use lab03_task03_srv-srv:quat2zyx-request instead.")))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <quat2zyx-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab03_task03_srv-srv:p-val is deprecated.  Use lab03_task03_srv-srv:p instead.")
  (p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <quat2zyx-request>) ostream)
  "Serializes a message object of type '<quat2zyx-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <quat2zyx-request>) istream)
  "Deserializes a message object of type '<quat2zyx-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<quat2zyx-request>)))
  "Returns string type for a service object of type '<quat2zyx-request>"
  "lab03_task03_srv/quat2zyxRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2zyx-request)))
  "Returns string type for a service object of type 'quat2zyx-request"
  "lab03_task03_srv/quat2zyxRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<quat2zyx-request>)))
  "Returns md5sum for a message object of type '<quat2zyx-request>"
  "a7eafc251f2a9b01f7a669d14fcb09da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'quat2zyx-request)))
  "Returns md5sum for a message object of type 'quat2zyx-request"
  "a7eafc251f2a9b01f7a669d14fcb09da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<quat2zyx-request>)))
  "Returns full string definition for message of type '<quat2zyx-request>"
  (cl:format cl:nil "geometry_msgs/Point p~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'quat2zyx-request)))
  "Returns full string definition for message of type 'quat2zyx-request"
  (cl:format cl:nil "geometry_msgs/Point p~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <quat2zyx-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <quat2zyx-request>))
  "Converts a ROS message object to a list"
  (cl:list 'quat2zyx-request
    (cl:cons ':p (p msg))
))
;//! \htmlinclude quat2zyx-response.msg.html

(cl:defclass <quat2zyx-response> (roslisp-msg-protocol:ros-message)
  ((p
    :reader p
    :initarg :p
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass quat2zyx-response (<quat2zyx-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <quat2zyx-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'quat2zyx-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab03_task03_srv-srv:<quat2zyx-response> is deprecated: use lab03_task03_srv-srv:quat2zyx-response instead.")))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <quat2zyx-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab03_task03_srv-srv:p-val is deprecated.  Use lab03_task03_srv-srv:p instead.")
  (p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <quat2zyx-response>) ostream)
  "Serializes a message object of type '<quat2zyx-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <quat2zyx-response>) istream)
  "Deserializes a message object of type '<quat2zyx-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<quat2zyx-response>)))
  "Returns string type for a service object of type '<quat2zyx-response>"
  "lab03_task03_srv/quat2zyxResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2zyx-response)))
  "Returns string type for a service object of type 'quat2zyx-response"
  "lab03_task03_srv/quat2zyxResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<quat2zyx-response>)))
  "Returns md5sum for a message object of type '<quat2zyx-response>"
  "a7eafc251f2a9b01f7a669d14fcb09da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'quat2zyx-response)))
  "Returns md5sum for a message object of type 'quat2zyx-response"
  "a7eafc251f2a9b01f7a669d14fcb09da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<quat2zyx-response>)))
  "Returns full string definition for message of type '<quat2zyx-response>"
  (cl:format cl:nil "geometry_msgs/Point p~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'quat2zyx-response)))
  "Returns full string definition for message of type 'quat2zyx-response"
  (cl:format cl:nil "geometry_msgs/Point p~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <quat2zyx-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <quat2zyx-response>))
  "Converts a ROS message object to a list"
  (cl:list 'quat2zyx-response
    (cl:cons ':p (p msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'quat2zyx)))
  'quat2zyx-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'quat2zyx)))
  'quat2zyx-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2zyx)))
  "Returns string type for a service object of type '<quat2zyx>"
  "lab03_task03_srv/quat2zyx")