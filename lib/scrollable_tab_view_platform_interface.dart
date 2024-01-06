import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'scrollable_tab_view_method_channel.dart';

abstract class ScrollableTabViewPlatform extends PlatformInterface {
  /// Constructs a ScrollableTabViewPlatform.
  ScrollableTabViewPlatform() : super(token: _token);

  static final Object _token = Object();

  static ScrollableTabViewPlatform _instance = MethodChannelScrollableTabView();

  /// The default instance of [ScrollableTabViewPlatform] to use.
  ///
  /// Defaults to [MethodChannelScrollableTabView].
  static ScrollableTabViewPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ScrollableTabViewPlatform] when
  /// they register themselves.
  static set instance(ScrollableTabViewPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
