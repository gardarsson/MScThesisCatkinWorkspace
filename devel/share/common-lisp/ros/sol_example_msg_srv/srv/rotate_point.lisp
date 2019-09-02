; Auto-generated. Do not edit!


(cl:in-package sol_example_msg_srv-srv)


;//! \htmlinclude rotate_point-request.msg.html

(cl:defclass <rotate_point-request> (roslisp-msg-protocol:ros-message)
  ((q
    :reader q
    :initarg :q
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (input_p
    :reader input_p
    :initarg :input_p
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass rotate_point-request (<rotate_point-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rotate_point-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rotate_point-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sol_example_msg_srv-srv:<rotate_point-request> is deprecated: use sol_example_msg_srv-srv:rotate_point-request instead.")))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <rotate_point-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sol_example_msg_srv-srv:q-val is deprecated.  Use sol_example_msg_srv-srv:q instead.")
  (q m))

(cl:ensure-generic-function 'input_p-val :lambda-list '(m))
(cl:defmethod input_p-val ((m <rotate_point-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sol_example_msg_srv-srv:input_p-val is deprecated.  Use sol_example_msg_srv-srv:input_p instead.")
  (input_p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rotate_point-request>) ostream)
  "Serializes a message object of type '<rotate_point-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'q) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input_p) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rotate_point-request>) istream)
  "Deserializes a message object of type '<rotate_point-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'q) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input_p) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rotate_point-request>)))
  "Returns string type for a service object of type '<rotate_point-request>"
  "sol_example_msg_srv/rotate_pointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rotate_point-request)))
  "Returns string type for a service object of type 'rotate_point-request"
  "sol_example_msg_srv/rotate_pointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rotate_point-request>)))
  "Returns md5sum for a message object of type '<rotate_point-request>"
  "2fb05bc22e36905ad98f9bce72e46ce8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rotate_point-request)))
  "Returns md5sum for a message object of type 'rotate_point-request"
  "2fb05bc22e36905ad98f9bce72e46ce8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rotate_point-request>)))
  "Returns full string definition for message of type '<rotate_point-request>"
  (cl:format cl:nil "geometry_msgs/Quaternion q~%geometry_msgs/Point input_p~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rotate_point-request)))
  "Returns full string definition for message of type 'rotate_point-request"
  (cl:format cl:nil "geometry_msgs/Quaternion q~%geometry_msgs/Point input_p~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rotate_point-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'q))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input_p))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rotate_point-request>))
  "Converts a ROS message object to a list"
  (cl:list 'rotate_point-request
    (cl:cons ':q (q msg))
    (cl:cons ':input_p (input_p msg))
))
;//! \htmlinclude rotate_point-response.msg.html

(cl:defclass <rotate_point-response> (roslisp-msg-protocol:ros-message)
  ((output_p
    :reader output_p
    :initarg :output_p
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass rotate_point-response (<rotate_point-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rotate_point-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rotate_point-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sol_example_msg_srv-srv:<rotate_point-response> is deprecated: use sol_example_msg_srv-srv:rotate_point-response instead.")))

(cl:ensure-generic-function 'output_p-val :lambda-list '(m))
(cl:defmethod output_p-val ((m <rotate_point-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sol_example_msg_srv-srv:output_p-val is deprecated.  Use sol_example_msg_srv-srv:output_p instead.")
  (output_p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rotate_point-response>) ostream)
  "Serializes a message object of type '<rotate_point-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'output_p) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rotate_point-response>) istream)
  "Deserializes a message object of type '<rotate_point-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'output_p) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rotate_point-response>)))
  "Returns string type for a service object of type '<rotate_point-response>"
  "sol_example_msg_srv/rotate_pointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rotate_point-response)))
  "Returns string type for a service object of type 'rotate_point-response"
  "sol_example_msg_srv/rotate_pointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rotate_point-response>)))
  "Returns md5sum for a message object of type '<rotate_point-response>"
  "2fb05bc22e36905ad98f9bce72e46ce8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rotate_point-response)))
  "Returns md5sum for a message object of type 'rotate_point-response"
  "2fb05bc22e36905ad98f9bce72e46ce8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rotate_point-response>)))
  "Returns full string definition for message of type '<rotate_point-response>"
  (cl:format cl:nil "geometry_msgs/Point output_p~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rotate_point-response)))
  "Returns full string definition for message of type 'rotate_point-response"
  (cl:format cl:nil "geometry_msgs/Point output_p~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rotate_point-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'output_p))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rotate_point-response>))
  "Converts a ROS message object to a list"
  (cl:list 'rotate_point-response
    (cl:cons ':output_p (output_p msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'rotate_point)))
  'rotate_point-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'rotate_point)))
  'rotate_point-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rotate_point)))
  "Returns string type for a service object of type '<rotate_point>"
  "sol_example_msg_srv/rotate_point")