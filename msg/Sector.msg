# Represent one sector used for trajectory planning

int16 sector_id

float32 lower_bound_x
float32 lower_bound_y
float32 lower_bound_z

float32 upper_bound_x
float32 upper_bound_y
float32 upper_bound_z

int16 robot_id

float32[3] approach_z_vector
float32 approach_max_angle_rad
int16 approach_sign_at_z_in_x