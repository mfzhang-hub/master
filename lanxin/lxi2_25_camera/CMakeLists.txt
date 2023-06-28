cmake_minimum_required(VERSION 2.8.2)
project(lxi2_25_camera)

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

find_package(catkin REQUIRED COMPONENTS
roscpp
sensor_msgs
image_transport
cv_bridge
)

find_package(OpenCV REQUIRED)

catkin_package()

# build
include_directories(${PROJECT_SOURCE_DIR}/include)
include_directories(${catkin_INCLUDE_DIRS})
include_directories(${OpenCV_INCLUDE_DIRS})

link_directories(${PROJECT_SOURCE_DIR}/lib)
link_directories(${OpenCV_LIB_DIR})


set(TARGET_NAME lxi2_25_node)

# NODE
add_executable(${TARGET_NAME}
                src/main.cpp 
                src/LxI2_25_Camera.cpp
                )

if(catkin_EXPORTED_TARGETS)
add_dependencies(${TARGET_NAME} ${catkin_EXPORTED_TARGETS})
endif()

target_link_libraries(${TARGET_NAME} 
                    ${catkin_LIBRARIES} 
                    EgErweimaApi 
                    ${OpenCV_LIBS}
                    pthread		) 


# INSTALL
install(TARGETS ${TARGET_NAME}
    DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})

install(DIRECTORY launch
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})

install(DIRECTORY param
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
	
install(DIRECTORY cfg
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})

install(PROGRAMS ${PROJECT_SOURCE_DIR}/lib/libEgErweimaApi.so
	DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION})
