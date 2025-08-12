
(cl:in-package :asdf)

(defsystem "patchwork-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ground_estimate" :depends-on ("_package_ground_estimate"))
    (:file "_package_ground_estimate" :depends-on ("_package"))
    (:file "node" :depends-on ("_package_node"))
    (:file "_package_node" :depends-on ("_package"))
  ))