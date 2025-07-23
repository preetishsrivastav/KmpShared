# 🚀 KMPDemo Project

![Kotlin](https://img.shields.io/badge/Kotlin-1.9.20-blue.svg?style=for-the-badge&logo=kotlin)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-brightgreen.svg?style=for-the-badge)

This is a Kotlin Multiplatform (KMP) project that demonstrates a simple shared codebase between an Android and an iOS application. 📱

## 📚 Table of Contents

- [Project Structure](#️-project-structure)
- [Shared Module](#-shared-module)
- [Workflow](#-workflow)
- [How to Run](#-how-to-run)

## 🏗️ Project Structure

The project is divided into three main modules:

- `app` 🤖: The Android application module.
- `ios` 🍏: The iOS application module.
- `shared` 🤝: A Kotlin module that contains the common code shared between the Android and iOS apps.

## 🤝 Shared Module

The `shared` module is the core of this KMP project. It's where the business logic and platform-independent code resides. This module is configured to compile for both Android (JVM) and iOS (Native).

<details>
<summary><strong>Key Files 📄</strong></summary>

- `shared/src/commonMain/kotlin/com/example/shared/BaseClass.kt`: A simple class with a method `printMyName()` that returns a string. This demonstrates how common code can be written once and used on multiple platforms.
- `shared/src/commonMain/kotlin/com/example/shared/Platform.kt`: This file uses the `expect` keyword to declare a function `platform()`. This function will have platform-specific implementations (`actual` implementations) in the `androidMain` and `iosMain` source sets.

</details>

## 🌊 Workflow

This project follows the standard Kotlin Multiplatform workflow, which enables a single codebase to be shared across both Android and iOS. Here’s how it works:

1.  **✍️ Write Common Code**: All the core logic, data models, and business rules are written in Kotlin within the `shared/src/commonMain` directory. This code is platform-agnostic.

2.  **🔌 Platform-Specific APIs**: When platform-specific functionality is needed (e.g., accessing device sensors or local storage), we use Kotlin's `expect`/`actual` mechanism.
    *   An `expect` declaration in `commonMain` defines a function or class that is expected to have a platform-specific implementation.
    *   `actual` implementations are then provided in `androidMain` and `iosMain` for Android and iOS, respectively.

3.  **📦 Compilation & Consumption**:
    *   **Android**: The `shared` module is compiled into an Android Archive (`.aar`) file, which is consumed by the `app` module like any other local library.
    *   **iOS**: The `shared` module is compiled into a native framework that is imported into the Xcode project, allowing Swift code to call the shared Kotlin code directly.

## ሩ How to Run

### ▶️ Android

1. Open the project in Android Studio.
2. Select the `app` run configuration.
3. Choose a target device (emulator or physical device).
4. Click the "Run" button.

### ▶️ iOS

1. Open the `ios/Kmp Demo.xcworkspace` file in Xcode.
2. Select a target simulator or a connected iOS device.
3. Click the "Run" button.

This README should provide a good overview of your project. Let me know if you'd like any changes or want to add more details!
