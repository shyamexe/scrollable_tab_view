#include "include/scrollable_tab_view/scrollable_tab_view_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "scrollable_tab_view_plugin.h"

void ScrollableTabViewPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  scrollable_tab_view::ScrollableTabViewPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
