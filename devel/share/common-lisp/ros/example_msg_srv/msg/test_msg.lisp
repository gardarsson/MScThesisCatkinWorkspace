; Auto-generated. Do not edit!


(cl:in-package example_msg_srv-msg)


;//! \htmlinclude test_msg.msg.html

(cl:defclass <test_msg> (roslisp-msg-protocol:ros-message)
  ((rotx
    :reader rotx
    :initarg :rotx
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (roty
    :reader roty
    :initarg :roty
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (rotz
    :reader rotz
    :initarg :rotz
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass test_msg (<test_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <test_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'test_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name example_msg_srv-msg:<test_msg> is deprecated: use example_msg_srv-msg:test_msg instead.")))

(cl:ensure-generic-function 'rotx-val :lambda-list '(m))
(cl:defmethod rotx-val ((m <test_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_msg_srv-msg:rotx-val is deprecated.  Use example_msg_srv-msg:rotx instead.")
  (rotx m))

(cl:ensure-generic-function 'roty-val :lambda-list '(m))
(cl:defmethod roty-val ((m <test_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_msg_srv-msg:roty-val is deprecated.  Use example_msg_srv-msg:roty instead.")
  (roty m))

(cl:ensure-generic-function 'rotz-val :lambda-list '(m))
(cl:defmethod rotz-val ((m <test_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_msg_srv-msg:rotz-val is deprecated.  Use example_msg_srv-msg:rotz instead.")
  (rotz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <test_msg>) ostream)
  "Serializes a message object of type '<test_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotx) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roty) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotz) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <test_msg>) istream)
  "Deserializes a message object of type '<test_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotx) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roty) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotz) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<test_msg>)))
  "Returns string type for a message object of type '<test_msg>"
  "example_msg_srv/test_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'test_msg)))
  "Returns string type for a message object of type 'test_msg"
  "example_msg_srv/test_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<test_msg>)))
  "Returns md5sum for a message object of type '<test_msg>"
  "1a848a7384d8bb575b0a921bed0b0de3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'test_msg)))
  "Returns md5sum for a message object of type 'test_msg"
  "1a848a7384d8bb575b0a921bed0b0de3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<test_msg>)))
  "Returns full string definition for message of type '<test_msg>"
  (cl:format cl:nil "std_msgs/Float64 rotx~%std_msgs/Float64 roty~%std_msgs/Float64 rotz~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'test_msg)))
  "Returns full string definition for message of type 'test_msg"
  (cl:format cl:nil "std_msgs/Float64 rotx~%std_msgs/Float64 roty~%std_msgs/Float64 rotz~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <test_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotx))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roty))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotz))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <test_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'test_msg
    (cl:cons ':rotx (rotx msg))
    (cl:cons ':roty (roty msg))
    (cl:cons ':rotz (rotz msg))
))
