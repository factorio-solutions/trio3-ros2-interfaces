# Trajectory from trajectory planner
    # Every frame is represented by 7 values
    # Array have to be reshaped to 7 x frames_count when received
        # frames = np.array(frames)
        # frames = frames.reshape(7, frames_count)
        # now every column represent one frame
    # when sending frames
        # frames = frames.reshape(7 x frames_count)

float32[] frames
string[] custom_commands
int16 frames_count