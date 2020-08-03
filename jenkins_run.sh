pwd=`pwd`
echo=$pwd
apk=$pwd\..\..\Android_build\AndroidSampleApp\app\build\outputs\apk\debug\app-debug.apk
echo=$apk
{
  adb uninstall com.appsflyer.androidsampleapp
} ||{
    echo 'no package on the devices'
}
adb install $apk
mvn clean install -Dtest=AppsFlyerBVT
