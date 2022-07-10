import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toast_plus/toast_plus_method_channel.dart';

void main() {
  MethodChannelToastPlus platform = MethodChannelToastPlus();
  const MethodChannel channel = MethodChannel('toast_plus');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
