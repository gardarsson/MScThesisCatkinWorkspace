; Auto-generated. Do not edit!


(cl:in-package lab03_task03_srv-srv)


;//! \htmlinclude rotmat2quat-request.msg.html

(cl:defclass <rotmat2quat-request> (roslisp-msg-protocol:ros-message)
  ((p
    :reader p
    :initarg :p
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass rotmat2quat-request (<rotmat2quat-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rotmat2quat-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rotmat2quat-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab03_task03_srv-srv:<rotmat2quat-request> is deprecated: use lab03_task03_srv-srv:rotmat2quat-request instead.")))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <rotmat2quat-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab03_task03_srv-srv:p-val is deprecated.  Use lab03_task03_srv-srv:p instead.")
  (p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rotmat2quat-request>) ostream)
  "Serializes a message object of type '<rotmat2quat-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rotmat2quat-request>) istream)
  "Deserializes a message object of type '<rotmat2quat-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rotmat2quat-request>)))
  "Returns string type for a service object of type '<rotmat2quat-request>"
  "lab03_task03_srv/rotmat2quatRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rotmat2quat-request)))
  "Returns string type for a service object of type 'rotmat2quat-request"
  "lab03_task03_srv/rotmat2quatRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rotmat2quat-request>)))
  "Returns md5sum for a message object of type '<rotmat2quat-request>"
  "a7eafc251f2a9b01f7a669d14fcb09da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rotmat2quat-request)))
  "Returns md5sum for a message object of type 'rotmat2quat-request"
  "a7eafc251f2a9b01f7a669d14fcb09da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rotmat2quat-request>)))
  "Returns full string definition for message of type '<rotmat2quat-request>"
  (cl:format cl:nil "geometry_msgs/Point p~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rotmat2quat-request)))
  "Returns full string definition for message of type 'rotmat2quat-request"
  (cl:format cl:nil "geometry_msgs/Point p~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rotmat2quat-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rotmat2quat-request>))
  "Converts a ROS message object to a list"
  (cl:list 'rotmat2quat-request
    (cl:cons ':p (p msg))
))
;//! \htmlinclude rotmat2quat-response.msg.html

(cl:defclass <rotmat2quat-response> (roslisp-msg-protocol:ros-message)
  ((p
    :reader p
    :initarg :p
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass rotmat2quat-response (<rotmat2quat-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rotmat2quat-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rotmat2quat-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab03_task03_srv-srv:<rotmat2quat-response> is deprecated: use lab03_task03_srv-srv:rotmat2quat-response instead.")))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <rotmat2quat-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab03_task03_srv-srv:p-val is deprecated.  Use lab03_task03_srv-srv:p instead.")
  (p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rotmat2quat-response>) ostream)
  "Serializes a message object of type '<rotmat2quat-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rotmat2quat-response>) istream)
  "Deserializes a message object of type '<rotmat2quat-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rotmat2quat-response>)))
  "Returns string type for a service object of type '<rotmat2quat-response>"
  "lab03_task03_srv/rotmat2quatResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rotmat2quat-response)))
  "Returns string type for a service object of type 'rotmat2quat-response"
  "lab03_task03_srv/rotmat2quatResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rotmat2quat-response>)))
  "Returns md5sum for a message object of type '<rotmat2quat-response>"
  "a7eafc251f2a9b01f7a669d14fcb09da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rotmat2quat-response)))
  "Returns md5sum for a message object of type 'rotmat2quat-response"
  "a7eafc251f2a9b01f7a669d14fcb09da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rotmat2quat-response>)))
  "Returns full string definition for message of type '<rotmat2quat-response>"
  (cl:format cl:nil "geometry_msgs/Point p~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rotmat2quat-response)))
  "Returns full string definition for message of type 'rotmat2quat-response"
  (cl:format cl:nil "geometry_msgs/Point p~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rotmat2quat-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rotmat2quat-response>))
  "Converts a ROS message object to a list"
  (cl:list 'rotmat2quat-response
    (cl:cons ':p (p msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'rotmat2quat)))
  'rotmat2quat-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'rotmat2quat)))
  'rotmat2quat-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rotmat2quat)))
  "Returns string type for a service object of type '<rotmat2quat>"
  "lab03_task03_srv/rotmat2quat")