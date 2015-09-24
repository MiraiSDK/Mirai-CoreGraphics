#!/bin/bash

checkError()
{
    if [ "${1}" -ne "0" ]; then
        echo "*** Error: ${2}"
        exit ${1}
    fi
}

if [ ! -f $MIRAI_SDK_PREFIX/lib/libCoreGraphics.so ] || 
	[ "$OPTION_REBUILD_COCOA" == "yes" ]; then
	echo "build CoreGraphics..."
	pushd $MIRAI_PROJECT_ROOT_PATH/Mirai-CoreGraphics
	xcodebuild -target CoreGraphics-Android -xcconfig xcconfig/Android-$ABI.xcconfig clean
	
	xcodebuild -target CoreGraphics-Android -xcconfig xcconfig/Android-$ABI.xcconfig
	checkError $? "build CoreGraphics failed"
	
	#clean up
	rm -r build
	popd
fi