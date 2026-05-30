# Version 1.0.16 - lower SDK requirement, add Swift Package Manager support

> **No breaking changes.** This release *widens* compatibility and is a drop-in upgrade from 1.0.15.

## SDK constraints

- Lowers the required SDK from Dart `^3.12.0` / Flutter `>=3.44.0` back to Dart `^3.11.0` / Flutter `>=3.35.0`, restoring compatibility for projects on slightly older stable toolchains (reverts the bump introduced in 1.0.15).
- Updates the example app SDK constraint to match (`>=3.11.0 <4.0.0`).

## iOS / macOS

- Adds **Swift Package Manager** support for the iOS and macOS plugins (new `Package.swift` manifests). CocoaPods remains fully supported.
- Moves the native Swift sources into the SPM layout (`<platform>/scrollable_tab_view/Sources/scrollable_tab_view/`) and updates the podspecs accordingly — no API change.

## Maintenance

- Applies `dart format` across the package.
- Bumps the Flutter version used in the GitHub Pages workflow to `3.35.0`.
- Achieves the full **160/160** pub.dev package score.

# Version 1.0.15 - migrate Android plugin to built-in Kotlin

## Android

- Removes `apply plugin: 'kotlin-android'` from `android/build.gradle` — Flutter 3.44+ automatically applies KGP for plugins that don't declare it, so no explicit application is needed.
- Removes `buildscript` block (inline AGP/KGP classpath dependencies no longer needed).
- Removes `allprojects` block.
- Removes `kotlinOptions { jvmTarget }` block.
- Removes `sourceSets { main.java.srcDirs += 'src/main/kotlin' }` (handled by KGP automatically).
- Updates `compileSdkVersion` 31 → 36 to satisfy modern AndroidX dependency requirements.
- Updates Java compile target from 1.8 to 17.
- Updates minimum supported SDK version to Flutter 3.44 / Dart 3.12.
- Fixes Flutter build warning: _"Your app uses plugins that apply Kotlin Gradle Plugin"_.

# Version 1.0.14 - add namespace in build.gradle

## New Feature

- Added tabBarAlignment for `TabBar` to allow more flexibility in aligning tabs, such as aligning them to the leftmost side using `TabAlignment.start`.

- **TabAlignment Parameter**: This feature provides greater customisation by enabling horizontal alignment of tabs, including options like `TabAlignment.start`, `TabAlignment.startOffset`, and more, enhancing user interface flexibility.

- FIX [#17](https://github.com/shyamexe/scrollable_tab_view/issues/17)

**Added TabBar Alignment (Version 1.0.6)**

- Added the ability to customise the Alignment of the tab bar and tab view independently, providing greater flexibility in UI customisation.

**Custom Tab Background Colours (Version 1.0.5)**

- Added the ability to customise the background colour of the tab bar and tab view independently, providing greater flexibility in UI customisation.

**Dart Formatting Update (Version 1.0.2)**

- This release includes formatting updates to ensure consistent and proper Dart formatting across the codebase.

**Web Platform and Desktop Support (Version 0.0.5)**

- Improved compatibility with web browsers.

- Enabled usage of the ScrollableTab widget on macOS, Windows, and Linux operating systems.

**Bug Fix (Version 0.0.4)**

- Fixed a problem with the function invocation that was causing issues with the onTap functionality.

**Documentation Updates (Version 0.0.3)**

- Updated the code documentation to provide clearer explanations of the functions and their usage.

**Widget Testing Updates (Version 0.0.2)**

- Added new widget tests to improve test coverage and ensure proper functionality.

**Initial Release (Version 0.0.1)**

- Initial release: The ScrollableTab widget allows you to create a tab bar with scrollable tabs without using a controller.

