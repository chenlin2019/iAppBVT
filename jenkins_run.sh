


#/c/Users/chenl/.jenkins/workspace/iAppBVT/iAppBVT

cd ..
cd ..
export pwd=`pwd`
echo $pwd
export apk=$pwd/Android_build/AndroidSampleApp/app/build/outputs/apk/debug/app-debug.apk
echo $apk
export unpackage="uninstall com.appsflyer.androidsampleapp"

#D:/adb/adb.exe: error while loading shared libraries: ?: cannot open shared object file: No such file or directory
{
  /d/adb/adb ${unpackage}
} ||{
    echo 'no package on the devices'
}


/d/adb/adb install ${apk}

cd iAppBVT/iAppBVT/

mvn clean install -Dtest=AppsFlyerBVT
