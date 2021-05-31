# One motion from trajectory planner
# PARAMS
# joints_sequence
    # Every join state is represented by 7 values
    # Array have to be reshaped to 7 x joints_sequence_size when received
        # joints_sequence   = np.array(joints_sequence)
        # joints_sequence   = frames.reshape(7, joints_sequence_size)
        # now every column represent one frame
    # when sending frames
        # joints_sequence = joints_sequence.reshape(7 x joints_sequence_size)

float32[] joints_sequence
int16 joints_sequence_size

geometry_msgs/Pose start_pose
geometry_msgs/Pose end_pose

float32[7] start_joints
float32[7] end_joints

Sector start_sector
Sector end_sector

int32 start_gripper_position
int32 end_gripper_position

MoveGripper move_gripper

MotionType motion_type