int32 id
string name

geometry_msgs/Pose global_2_robot
geometry_msgs/Pose object_2_tcp
geometry_msgs/Pose tcp_2_flange
geometry_msgs/Pose flange_fix_rotation
Matrix4x4 realsense_2_robot
Matrix4x4 trifocal_2_robot
Sector valid_box
Sector[] sectors