cmake_minimum_required(VERSION 3.10)

project(XMLConfig)

add_library(XMLConfig SHARED XmlConfig.cpp Utils.cpp XmlString.cpp Logger.cpp )

set_property(TARGET XMLConfig PROPERTY CXX_STANDARD 11)

file( GLOB all_headers "*.h")
install(TARGETS XMLConfig DESTINATION lib)
install(FILES ${all_headers} DESTINATION include/XmlConfig)