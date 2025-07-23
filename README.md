# KMPDemo Projectgit

This is a Kotlin Multiplatform (KMP) project that demonstrates a simple shared codebase between an Android and an iOS application.

## Project Structure

The project is divided into three main modules:

- `app`: The Android application module.
- `ios`: The iOS application module.
- `shared`: A Kotlin module that contains the common code shared between the Android and iOS apps.

## Shared Module

The `shared` module is the core of this KMP project. It's where the business logic and platform-independent code resides. This module is configured to compile for both Android (JVM) and iOS (Native).

### Key Files

- `shared/src/commonMain/kotlin/com/example/shared/BaseClass.kt`: A simple class with a method `printMyName()` that returns a string. This demonstrates how common code can be written once and used on multiple platforms.
- `shared/src/commonMain/kotlin/com/example/shared/Platform.kt`: This file uses the `expect` keyword to declare a function `platform()`. This function will have platform-specific implementations (`actual` implementations) in the `androidMain` and `iosMain` source sets.

## How to Run

### Android

1. Open the project in Android Studio.
2. Select the `app` run configuration.
3. Choose a target device (emulator or physical device).
4. Click the "Run" button.

### iOS

1. Open the `ios/Kmp Demo.xcworkspace` file in Xcode.
2. Select a target simulator or a connected iOS device.
3. Click the "Run" button.

This README should provide a good overview of your project. Let me know if you'd like any changes or want to add more details!
