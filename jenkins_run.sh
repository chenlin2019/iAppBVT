pwd=`pwd`
echo $pwd
apk=$pwd\..\..\Android_build\AndroidSampleApp\app\build\outputs\apk\debug\app-debug.apk
echo $apk
{
  D:\Program Files\android-sdk_r25.2.5-windows\platform-tools\adb.exe uninstall com.appsflyer.androidsampleapp
} ||{
    echo 'no package on the devices'
}
D:\Program Files\android-sdk_r25.2.5-windows\platform-tools\adb.exe install $apk
mvn clean install -Dtest=AppsFlyerBVT
