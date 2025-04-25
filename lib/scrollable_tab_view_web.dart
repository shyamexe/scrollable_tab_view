import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'scrollable_tab_view_platform_interface.dart';

/// A web implementation of the ScrollableTabViewPlatform of the ScrollableTabView plugin.
class ScrollableTabViewWeb extends ScrollableTabViewPlatform {
  /// Constructs a ScrollableTabViewWeb
  ScrollableTabViewWeb();

  static void registerWith(Registrar registrar) {
    ScrollableTabViewPlatform.instance = ScrollableTabViewWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    return 'web';
  }
}
