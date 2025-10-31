# Sources: list explicitly (recommended) or use a glob if you prefer
file( GLOB XMLCONFIG_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp")
file( GLOB XMLCONFIG_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}/*.h")


# OBJECT library (used to compose the combined lib)
add_library(XmlConfig_obj OBJECT ${XMLCONFIG_SOURCES} ${XMLCONFIG_HEADERS})
target_include_directories(XmlConfig_obj PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/)

# Actual library for this component
if(BUILD_SHARED_LIBS)
  add_library(XmlConfig SHARED $<TARGET_OBJECTS:XmlConfig_obj>)
else()
  add_library(XmlConfig STATIC $<TARGET_OBJECTS:XmlConfig_obj>)
endif()
target_include_directories(XmlConfig PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/)
