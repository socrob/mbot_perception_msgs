cmake_minimum_required(VERSION 2.8.3)
project(mbot_perception_msgs)

find_package(catkin REQUIRED 
  COMPONENTS
    message_generation
    geometry_msgs
    sensor_msgs
    std_msgs
)

add_message_files(
  FILES
  PoseWithCovarianceArray.msg
  RecognizedObject2D.msg
  RecognizedObject2DList.msg
  RecognizedObject3D.msg
  RecognizedObject3DList.msg
  TrackedObject3D.msg
  TrackedObject3DList.msg
  MappedObject3D.msg
  MappedObject3DList.msg
)

add_service_files(
  FILES
  GetObjectsMap3D.srv
  DeleteObject3D.srv
)

generate_messages(
  DEPENDENCIES
    geometry_msgs
    sensor_msgs
    std_msgs  
)

catkin_package(
  CATKIN_DEPENDS 
    message_runtime
    geometry_msgs
    sensor_msgs
    std_msgs
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)
