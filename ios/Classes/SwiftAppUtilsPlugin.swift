import Flutter
import UIKit

public class SwiftAppUtilsPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "app_utils", binaryMessenger: registrar.messenger())
        let instance = SwiftAppUtilsPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case LAUNCH_APP:
            checkCanLaunch(
                arguments: call.arguments,
                result: result
            )
            break
        case GET_INSTALLED_APPS:
            result(FlutterMethodNotImplemented)
            break
        case CAN_LAUNCH_APP:
            launchApp(
                arguments: call.arguments,
                result: result
            )
            break
        case GET_DEVICE_INFO:
            
            break
        case GET_APP_INFO:
            break
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}
