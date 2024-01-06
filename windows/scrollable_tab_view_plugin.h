#ifndef FLUTTER_PLUGIN_SCROLLABLE_TAB_VIEW_PLUGIN_H_
#define FLUTTER_PLUGIN_SCROLLABLE_TAB_VIEW_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace scrollable_tab_view {

class ScrollableTabViewPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ScrollableTabViewPlugin();

  virtual ~ScrollableTabViewPlugin();

  // Disallow copy and assign.
  ScrollableTabViewPlugin(const ScrollableTabViewPlugin&) = delete;
  ScrollableTabViewPlugin& operator=(const ScrollableTabViewPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace scrollable_tab_view

#endif  // FLUTTER_PLUGIN_SCROLLABLE_TAB_VIEW_PLUGIN_H_
