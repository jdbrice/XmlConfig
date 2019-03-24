#!python
import subprocess
import os

env = Environment()
Export('env')
cppDefines 		= {}
cppFlags 		= ['-Wall' ]#, '-Werror']
cxxFlags 		= ['-std=c++11', '-O3' ]


paths 			= [ '.' ]


########################## Project Target #####################################
common_env = env.Clone()
common_env.Append(CPPDEFINES 	= cppDefines)
common_env.Append(CPPFLAGS 		= cppFlags)
common_env.Append(CXXFLAGS 		= cxxFlags)
common_env.Append(LINKFLAGS 	= cxxFlags ) #ROOTLIBS + " " + JDB_LIB + "/lib/libJDB.a"
common_env.Append(CPPPATH		= paths)
# common_env.Append(LIBS 			= [ "libRooBarbCore.a", "libRooBarbConfig.a", "libRooBarbTasks.a", "libRooBarbRootAna.a", "libRooBarbUnitTest.a", "libRooBarbExtra.a" ] )
# common_env.Append(LIBPATH 		= [ JDB_LIB + "/lib/" ] )

# common_env[ "_LIBFLAGS" ] = common_env[ "_LIBFLAGS" ] + " " + ROOTLIBS + " " 


jdb_log_level = ARGUMENTS.get( "ll", 0 )
common_env.Append(CXXFLAGS 		= "-DJDB_LOG_LEVEL=" + str(jdb_log_level) )
target = common_env.StaticLibrary( target='XmlConfig', source=[ "XmlConfig.cpp", "XmlString.cpp", "Logger.cpp", "Utils.cpp" ] )

# Depends( target, Glob( JDB_LIB + "/include/jdb/*" ) )



test = common_env.Program( target='unit', source=[ Glob("*.cpp")  ] )

common_env.Alias( 'test', test )


# Install the Header files and lib file:
install = [
    common_env.Install( '/usr/local/include/XmlConfig/', [Glob("*.h")] ),
    common_env.Install( '/usr/local/lib', [Glob("*.a")] ) 
]


# set as the default target
Default( target, install )