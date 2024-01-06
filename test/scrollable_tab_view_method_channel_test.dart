import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scrollable_tab_view/scrollable_tab_view_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelScrollableTabView platform = MethodChannelScrollableTabView();
  const MethodChannel channel = MethodChannel('scrollable_tab_view');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
