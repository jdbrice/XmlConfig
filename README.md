# XmlConfig
Easy configuration using XML for c++ projects

XmlConfig provides a flexible and easy to use interface that makes XML configuration files easy to use in any c++ project. 
No external dependencies (depends on rapidXML, bundled).


## Building the library
XmlConfig uses the `scons` build tool.

get the source:
```
git clone https://github.com/jdbrice/XmlConfig.git
```

build and isntall to default PREFIX (`/usr/local/`):
```sh
scons
```

or specify the PREFIX with:
```sh
scons prefix=<PREFIX>
```

the header files will be installed to `PREFIX/include/XmlConfig/*` and the libraries to `PREFIX/lib`
so when you include headers, make sure the `PREFIX/include` is on your `CPPPATH` and then use:
```cpp
#include "XmlConfig/XmlConfig.h"
```

and when linking against `libXmlConfig` make sure `PREFIX/lib` is on the library search path.

## Usage


