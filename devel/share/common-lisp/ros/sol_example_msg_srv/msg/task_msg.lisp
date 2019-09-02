; Auto-generated. Do not edit!


(cl:in-package sol_example_msg_srv-msg)


;//! \htmlinclude task_msg.msg.html

(cl:defclass <task_msg> (roslisp-msg-protocol:ros-message)
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
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (qw
    :reader qw
    :initarg :qw
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (qx
    :reader qx
    :initarg :qx
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (qy
    :reader qy
    :initarg :qy
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (qz
    :reader qz
    :initarg :qz
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass task_msg (<task_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <task_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'task_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sol_example_msg_srv-msg:<task_msg> is deprecated: use sol_example_msg_srv-msg:task_msg instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <task_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sol_example_msg_srv-msg:x-val is deprecated.  Use sol_example_msg_srv-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <task_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sol_example_msg_srv-msg:y-val is deprecated.  Use sol_example_msg_srv-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <task_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sol_example_msg_srv-msg:z-val is deprecated.  Use sol_example_msg_srv-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'qw-val :lambda-list '(m))
(cl:defmethod qw-val ((m <task_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sol_example_msg_srv-msg:qw-val is deprecated.  Use sol_example_msg_srv-msg:qw instead.")
  (qw m))

(cl:ensure-generic-function 'qx-val :lambda-list '(m))
(cl:defmethod qx-val ((m <task_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sol_example_msg_srv-msg:qx-val is deprecated.  Use sol_example_msg_srv-msg:qx instead.")
  (qx m))

(cl:ensure-generic-function 'qy-val :lambda-list '(m))
(cl:defmethod qy-val ((m <task_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sol_example_msg_srv-msg:qy-val is deprecated.  Use sol_example_msg_srv-msg:qy instead.")
  (qy m))

(cl:ensure-generic-function 'qz-val :lambda-list '(m))
(cl:defmethod qz-val ((m <task_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sol_example_msg_srv-msg:qz-val is deprecated.  Use sol_example_msg_srv-msg:qz instead.")
  (qz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <task_msg>) ostream)
  "Serializes a message object of type '<task_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'z) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'qw) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'qx) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'qy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'qz) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <task_msg>) istream)
  "Deserializes a message object of type '<task_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'z) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'qw) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'qx) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'qy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'qz) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<task_msg>)))
  "Returns string type for a message object of type '<task_msg>"
  "sol_example_msg_srv/task_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'task_msg)))
  "Returns string type for a message object of type 'task_msg"
  "sol_example_msg_srv/task_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<task_msg>)))
  "Returns md5sum for a message object of type '<task_msg>"
  "9aa73411cfc8de91714b9efad534faa3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'task_msg)))
  "Returns md5sum for a message object of type 'task_msg"
  "9aa73411cfc8de91714b9efad534faa3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<task_msg>)))
  "Returns full string definition for message of type '<task_msg>"
  (cl:format cl:nil "std_msgs/Float64 x~%std_msgs/Float64 y~%std_msgs/Float64 z~%std_msgs/Float64 qw~%std_msgs/Float64 qx~%std_msgs/Float64 qy~%std_msgs/Float64 qz~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'task_msg)))
  "Returns full string definition for message of type 'task_msg"
  (cl:format cl:nil "std_msgs/Float64 x~%std_msgs/Float64 y~%std_msgs/Float64 z~%std_msgs/Float64 qw~%std_msgs/Float64 qx~%std_msgs/Float64 qy~%std_msgs/Float64 qz~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <task_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'z))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'qw))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'qx))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'qy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'qz))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <task_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'task_msg
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':qw (qw msg))
    (cl:cons ':qx (qx msg))
    (cl:cons ':qy (qy msg))
    (cl:cons ':qz (qz msg))
))
