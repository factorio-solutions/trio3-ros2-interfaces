cmake_minimum_required(VERSION 3.5)
project(trio3_ros2_interfaces)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # uncomment the line when a copyright and license is not present in all source files
  #set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # uncomment the line when this package is not in a git repo
  #set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

# pridani novych interfacu pro msg a service
find_package(rosidl_default_generators REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(std_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "action/Align.action"
  "action/PickNPlace.action"
  "action/ReplanTrajectory.action"
  "action/RobotMove.action"
  "action/TrifocalScan.action"
  "action/ReplanMotion.action"
  "action/HandEyeCalibration.action"

  "srv/GetRobotStatus.srv"
  "srv/GetHomePose.srv"
  "srv/PoseUpdate.srv"
  "srv/PoseUpdateObject.srv"
  "srv/GetColorImage.srv"
  "srv/SetRequest.srv"
  "srv/CheckCoordinate.srv"
  "srv/GetObject.srv"

  "msg/GripperStatus.msg"
  "msg/ObjectType.msg"
  "msg/RobotStatus.msg"
  "msg/StopStatus.msg"
  "msg/Trajectory.msg"
  "msg/RobotPose.msg"
  "msg/Motion.msg"
  "msg/Sector.msg"
  "msg/Action.msg"
  "msg/MotionType.msg"
  "msg/ReplanMode.msg"
  "msg/MoveGripper.msg"
  "msg/GrayscaleImage.msg"
  "msg/ColorImage.msg"
  "msg/CoreActionPhase.msg"
  "msg/Units.msg"
  "msg/Object.msg"

  DEPENDENCIES geometry_msgs
  DEPENDENCIES std_msgs
  DEPENDENCIES sensor_msgs
 )

ament_package()
