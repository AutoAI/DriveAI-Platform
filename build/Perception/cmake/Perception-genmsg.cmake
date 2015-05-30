# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "Perception: 1 messages, 0 services")

set(MSG_I_FLAGS "-IPerception:/home/parthmehrotra/Projects/HighPriority/DriveAI/DriveAI-Platform/src/Perception/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genjava REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(Perception_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/parthmehrotra/Projects/HighPriority/DriveAI/DriveAI-Platform/src/Perception/msg/Num.msg" NAME_WE)
add_custom_target(_Perception_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Perception" "/home/parthmehrotra/Projects/HighPriority/DriveAI/DriveAI-Platform/src/Perception/msg/Num.msg" ""
)

#
#  langs = gencpp;genjava;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(Perception
  "/home/parthmehrotra/Projects/HighPriority/DriveAI/DriveAI-Platform/src/Perception/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Perception
)

### Generating Services

### Generating Module File
_generate_module_cpp(Perception
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Perception
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(Perception_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(Perception_generate_messages Perception_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parthmehrotra/Projects/HighPriority/DriveAI/DriveAI-Platform/src/Perception/msg/Num.msg" NAME_WE)
add_dependencies(Perception_generate_messages_cpp _Perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Perception_gencpp)
add_dependencies(Perception_gencpp Perception_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Perception_generate_messages_cpp)

### Section generating for lang: genjava
### Generating Messages
_generate_msg_java(Perception
  "/home/parthmehrotra/Projects/HighPriority/DriveAI/DriveAI-Platform/src/Perception/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/Perception
)

### Generating Services

### Generating Module File
_generate_module_java(Perception
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/Perception
  "${ALL_GEN_OUTPUT_FILES_java}"
)

add_custom_target(Perception_generate_messages_java
  DEPENDS ${ALL_GEN_OUTPUT_FILES_java}
)
add_dependencies(Perception_generate_messages Perception_generate_messages_java)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parthmehrotra/Projects/HighPriority/DriveAI/DriveAI-Platform/src/Perception/msg/Num.msg" NAME_WE)
add_dependencies(Perception_generate_messages_java _Perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Perception_genjava)
add_dependencies(Perception_genjava Perception_generate_messages_java)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Perception_generate_messages_java)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(Perception
  "/home/parthmehrotra/Projects/HighPriority/DriveAI/DriveAI-Platform/src/Perception/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Perception
)

### Generating Services

### Generating Module File
_generate_module_lisp(Perception
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Perception
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(Perception_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(Perception_generate_messages Perception_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parthmehrotra/Projects/HighPriority/DriveAI/DriveAI-Platform/src/Perception/msg/Num.msg" NAME_WE)
add_dependencies(Perception_generate_messages_lisp _Perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Perception_genlisp)
add_dependencies(Perception_genlisp Perception_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Perception_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(Perception
  "/home/parthmehrotra/Projects/HighPriority/DriveAI/DriveAI-Platform/src/Perception/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Perception
)

### Generating Services

### Generating Module File
_generate_module_py(Perception
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Perception
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(Perception_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(Perception_generate_messages Perception_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parthmehrotra/Projects/HighPriority/DriveAI/DriveAI-Platform/src/Perception/msg/Num.msg" NAME_WE)
add_dependencies(Perception_generate_messages_py _Perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Perception_genpy)
add_dependencies(Perception_genpy Perception_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Perception_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Perception)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Perception
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(Perception_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genjava_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/Perception)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/Perception
    DESTINATION ${genjava_INSTALL_DIR}
  )
endif()
add_dependencies(Perception_generate_messages_java std_msgs_generate_messages_java)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Perception)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Perception
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(Perception_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Perception)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Perception\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Perception
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(Perception_generate_messages_py std_msgs_generate_messages_py)
