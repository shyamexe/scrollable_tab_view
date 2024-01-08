import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'scrollable_tab_view_platform_interface.dart';

/// An implementation of [ScrollableTabViewPlatform] that uses method channels.
class MethodChannelScrollableTabView extends ScrollableTabViewPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('scrollable_tab_view');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
