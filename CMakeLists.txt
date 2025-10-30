cmake_minimum_required(VERSION 3.10)

project(XmlConfig)

add_library(XmlConfig SHARED XmlConfig.cpp Utils.cpp XmlString.cpp Logger.cpp )
set_target_properties(XmlConfig PROPERTIES LINK_FLAGS "-m32")

target_compile_options(XmlConfig PRIVATE "-m32")
target_link_libraries(XmlConfig PRIVATE "-m32")

add_compile_options("-m32")

set_property(TARGET XmlConfig PROPERTY CXX_STANDARD 11)

file( GLOB all_headers "*.h")
install(TARGETS XmlConfig DESTINATION lib)
install(FILES ${all_headers} DESTINATION include/XmlConfig)