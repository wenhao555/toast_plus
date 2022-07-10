import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'toast_plus_method_channel.dart';

abstract class ToastPlusPlatform extends PlatformInterface {
  /// Constructs a ToastPlusPlatform.
  ToastPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static ToastPlusPlatform _instance = MethodChannelToastPlus();

  /// The default instance of [ToastPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelToastPlus].
  static ToastPlusPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ToastPlusPlatform] when
  /// they register themselves.
  static set instance(ToastPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
