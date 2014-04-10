project(autorenamer)
cmake_minimum_required(VERSION 2.8.11)

set(CMAKE_AUTOMOC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(autorenamer_SRCS main.cpp)
set(RESOURCES resource.qrc)

find_package(Qt5Widgets REQUIRED)
find_package(Qt5Core REQUIRED)
find_package(Qt5Quick REQUIRED)

qt5_add_resources(autorenamer_RES ${RESOURCES})

add_executable(autorenamer ${autorenamer_SRCS} ${autorenamer_RES})

install(TARGETS autorenamer RUNTIME DESTINATION bin)

target_link_libraries(autorenamer Qt5::Widgets)
target_link_libraries(autorenamer Qt5::Core)
target_link_libraries(autorenamer Qt5::Quick)
