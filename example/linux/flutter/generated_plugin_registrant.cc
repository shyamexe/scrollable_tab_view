//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <scrollable_tab_view/scrollable_tab_view_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) scrollable_tab_view_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ScrollableTabViewPlugin");
  scrollable_tab_view_plugin_register_with_registrar(scrollable_tab_view_registrar);
}
