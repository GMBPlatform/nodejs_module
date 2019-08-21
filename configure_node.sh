#!/bin/sh
echo "Please enter project name"
read _name
_NAMECMD="\  \"name\": \"$_name\", "
sed -i '/name/d' package.json
sed -i -e "2 i   $_NAMECMD" ./package.json

echo "Please enter project version [1.0.0][1.0.1]..."
read _ver
_VERCMD="\  \"version\": \"$_ver\", "
sed -i '/version/d' package.json
sed -i -e "3 i   $_VERCMD" ./package.json

echo "Please enter project description [text]"
read _des
_VERDES="\  \"description\": \"$_des\", "
sed -i '/description/d' package.json
sed -i -e "4 i   $_VERDES" ./package.json

echo "Please enter project main [main.js]"
read _main
_VERMAIN="\  \"main\": \"$_main\", "
sed -i '/main/d' package.json
sed -i -e "5 i   $_VERMAIN" ./package.json

echo "Please enter project author [Leo Son]"
read _auth
_VERAUTH="\  \"author\": \"$_auth\", "
sed -i '/author/d' package.json
sed -i -e "9 i   $_VERAUTH" ./package.json

echo "Package.json file update successful"
echo "What kind of app is it?[IS/ISA/SCA]"
read _kind
cp ./package.json ../$_kind/package.json
cd ../$_kind/.
npm install

echo "App ready to run"