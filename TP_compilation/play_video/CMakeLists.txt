cmake_minimum_required( VERSION 3.0 )
project( TP_GL )
set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -Wextra" )
set( CMAKE_BUILD_TYPE Debug )

find_package( Boost REQUIRED COMPONENTS system filesystem )
include_directories( ${Boost_INCLUDE_DIRS} )

include_directories( src )

find_package( PkgConfig REQUIRED)
pkg_check_modules( PKG REQUIRED gtkmm-3.0 libvlc)
include_directories( ${PKG_INCLUDE_DIRS} )

add_library(play_video STATIC
  src/play_video/Filesystem.cpp)
target_link_libraries(play_video ${Boost_LIBRARIES})

add_executable(play_video_gui
  src/play_video_gui/play_video_gui.cpp
  src/play_video_gui/PlayerWindow.cpp)



add_executable(play_video_test
  src/play_video_test/play_video_test.cpp)
target_link_libraries(play_video_test play_video)



