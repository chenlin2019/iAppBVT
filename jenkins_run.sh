


#/c/Users/chenl/.jenkins/workspace/iAppBVT/iAppBVT

cd ..
cd ..
pwd=`pwd`
echo $pwd
apk=$pwd\Android_build\AndroidSampleApp\app\build\outputs\apk\debug\app-debug.apk
echo $apk


{
  \d\adb\adb.exe uninstall com.appsflyer.androidsampleapp
} ||{
    echo 'no package on the devices'
}


\d\adb\adb.exe install $apk

cd iAppBVT\iAppBVT\

mvn clean install -Dtest=AppsFlyerBVT
