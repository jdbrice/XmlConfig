DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
# Headers
mkdir -p /usr/local/lib
ln -sf ${DIR}/libXmlConfig.a /usr/local/lib/libXmlConfig.a

mkdir -p /usr/local/include/XmlConfig
cp *.h /usr/local/include/XmlConfig/