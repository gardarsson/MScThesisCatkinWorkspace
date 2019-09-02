; Auto-generated. Do not edit!


(cl:in-package lab03_task03_srv-srv)


;//! \htmlinclude quat2angleaxis-request.msg.html

(cl:defclass <quat2angleaxis-request> (roslisp-msg-protocol:ros-message)
  ((p
    :reader p
    :initarg :p
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass quat2angleaxis-request (<quat2angleaxis-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <quat2angleaxis-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'quat2angleaxis-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab03_task03_srv-srv:<quat2angleaxis-request> is deprecated: use lab03_task03_srv-srv:quat2angleaxis-request instead.")))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <quat2angleaxis-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab03_task03_srv-srv:p-val is deprecated.  Use lab03_task03_srv-srv:p instead.")
  (p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <quat2angleaxis-request>) ostream)
  "Serializes a message object of type '<quat2angleaxis-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <quat2angleaxis-request>) istream)
  "Deserializes a message object of type '<quat2angleaxis-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<quat2angleaxis-request>)))
  "Returns string type for a service object of type '<quat2angleaxis-request>"
  "lab03_task03_srv/quat2angleaxisRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2angleaxis-request)))
  "Returns string type for a service object of type 'quat2angleaxis-request"
  "lab03_task03_srv/quat2angleaxisRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<quat2angleaxis-request>)))
  "Returns md5sum for a message object of type '<quat2angleaxis-request>"
  "a7eafc251f2a9b01f7a669d14fcb09da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'quat2angleaxis-request)))
  "Returns md5sum for a message object of type 'quat2angleaxis-request"
  "a7eafc251f2a9b01f7a669d14fcb09da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<quat2angleaxis-request>)))
  "Returns full string definition for message of type '<quat2angleaxis-request>"
  (cl:format cl:nil "geometry_msgs/Point p~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'quat2angleaxis-request)))
  "Returns full string definition for message of type 'quat2angleaxis-request"
  (cl:format cl:nil "geometry_msgs/Point p~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <quat2angleaxis-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <quat2angleaxis-request>))
  "Converts a ROS message object to a list"
  (cl:list 'quat2angleaxis-request
    (cl:cons ':p (p msg))
))
;//! \htmlinclude quat2angleaxis-response.msg.html

(cl:defclass <quat2angleaxis-response> (roslisp-msg-protocol:ros-message)
  ((p
    :reader p
    :initarg :p
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass quat2angleaxis-response (<quat2angleaxis-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <quat2angleaxis-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'quat2angleaxis-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab03_task03_srv-srv:<quat2angleaxis-response> is deprecated: use lab03_task03_srv-srv:quat2angleaxis-response instead.")))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <quat2angleaxis-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab03_task03_srv-srv:p-val is deprecated.  Use lab03_task03_srv-srv:p instead.")
  (p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <quat2angleaxis-response>) ostream)
  "Serializes a message object of type '<quat2angleaxis-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <quat2angleaxis-response>) istream)
  "Deserializes a message object of type '<quat2angleaxis-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<quat2angleaxis-response>)))
  "Returns string type for a service object of type '<quat2angleaxis-response>"
  "lab03_task03_srv/quat2angleaxisResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2angleaxis-response)))
  "Returns string type for a service object of type 'quat2angleaxis-response"
  "lab03_task03_srv/quat2angleaxisResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<quat2angleaxis-response>)))
  "Returns md5sum for a message object of type '<quat2angleaxis-response>"
  "a7eafc251f2a9b01f7a669d14fcb09da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'quat2angleaxis-response)))
  "Returns md5sum for a message object of type 'quat2angleaxis-response"
  "a7eafc251f2a9b01f7a669d14fcb09da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<quat2angleaxis-response>)))
  "Returns full string definition for message of type '<quat2angleaxis-response>"
  (cl:format cl:nil "geometry_msgs/Point p~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'quat2angleaxis-response)))
  "Returns full string definition for message of type 'quat2angleaxis-response"
  (cl:format cl:nil "geometry_msgs/Point p~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <quat2angleaxis-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <quat2angleaxis-response>))
  "Converts a ROS message object to a list"
  (cl:list 'quat2angleaxis-response
    (cl:cons ':p (p msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'quat2angleaxis)))
  'quat2angleaxis-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'quat2angleaxis)))
  'quat2angleaxis-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2angleaxis)))
  "Returns string type for a service object of type '<quat2angleaxis>"
  "lab03_task03_srv/quat2angleaxis")