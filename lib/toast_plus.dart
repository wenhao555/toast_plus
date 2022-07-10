
import 'toast_plus_platform_interface.dart';

class ToastPlus {
  Future<String?> getPlatformVersion() {
    return ToastPlusPlatform.instance.getPlatformVersion();
  }
}
