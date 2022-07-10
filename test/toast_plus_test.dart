import 'package:flutter_test/flutter_test.dart';
import 'package:toast_plus/toast_plus.dart';
import 'package:toast_plus/toast_plus_platform_interface.dart';
import 'package:toast_plus/toast_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockToastPlusPlatform 
    with MockPlatformInterfaceMixin
    implements ToastPlusPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ToastPlusPlatform initialPlatform = ToastPlusPlatform.instance;

  test('$MethodChannelToastPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelToastPlus>());
  });

  test('getPlatformVersion', () async {
    ToastPlus toastPlusPlugin = ToastPlus();
    MockToastPlusPlatform fakePlatform = MockToastPlusPlatform();
    ToastPlusPlatform.instance = fakePlatform;
  
    expect(await toastPlusPlugin.getPlatformVersion(), '42');
  });
}
