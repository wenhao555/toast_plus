import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'toast_plus_platform_interface.dart';

/// An implementation of [ToastPlusPlatform] that uses method channels.
class MethodChannelToastPlus extends ToastPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('toast_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
