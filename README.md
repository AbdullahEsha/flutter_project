<!-- # Flutter project with API intrigration

This README provides step-by-step instructions to set up a Flutter project with API integration.

## Prerequisites (Download, Install and configure)

- [VS Code](https://code.visualstudio.com/)
- Add Extention [Flutter](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter) to VS COde
- Download and Set up environment [Flutter SDK](https://flutter.dev/)
- [Android Studio](https://developer.android.com/) for virtual device and also configur/connect it with VS Code as emulator -->

# Flutter Project with API Setup Guide

This guide will walk you through setting up a Flutter development environment, including necessary tools and configurations for using VS Code and an Android emulator.

## Prerequisites

1. [VS Code](https://code.visualstudio.com/) - A lightweight code editor for Flutter and Dart development.
2. [Android Studio](https://developer.android.com/) - Used to create and configure an Android emulator.

## Installation Steps

### Step 1: Install Visual Studio Code (VS Code)

Download and install VS Code from [the official website](https://code.visualstudio.com/). VS Code will be your main editor for writing Flutter and Dart code.

### Step 2: Add the Flutter Extension for VS Code

To enable Flutter support in VS Code, install the Flutter extension:

1. Open VS Code.
2. Go to the **Extensions** view by clicking on the square icon in the sidebar or pressing `Ctrl+Shift+X`.
3. Search for **Flutter** and select [Flutter extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter) by Dart-Code.
4. Click **Install**.

### Step 3: Download and Set Up Flutter SDK

1. Download the Flutter SDK from the [official Flutter website](https://flutter.dev/docs/get-started/install).
2. Extract the downloaded `.zip` file to a location of your choice (e.g., `C:\flutter` on Windows).
3. **Add Flutter to your PATH**:
   - On **Windows**:
     1. Open **Environment Variables** (search "Environment Variables" in your system settings).
     2. Under **System Variables**, find the `Path` variable and edit it.
     3. Add the path to the Flutter SDK `bin` folder (e.g., `C:\flutter\bin`).
   - On **macOS/Linux**:
     Add the following line to your `~/.bashrc` or `~/.zshrc` file:
     ```bash
     export PATH="$PATH:/path/to/flutter/bin"
     ```
4. Verify the installation by running the following command in a new terminal:
   ```bash
   flutter doctor
   ```

### Step 4: Install Android Studio (for Emulator)

To test Flutter apps on an Android emulator, install Android Studio and set up an emulator:

1. Download and install [Android Studio](https://developer.android.com/).
2. Open Android Studio and go to **SDK Manager** to install the required Android SDK tools.
3. Go to **AVD Manager** in Android Studio to create a new virtual device (emulator).
4. Start the emulator from Android Studio or use VS Code to control it.

### Step 5: Configure Flutter with Android Studio Emulator

1. Run `flutter doctor --android-licenses` in the terminal to accept the Android licenses.
2. Open VS Code and ensure the emulator is running.
3. Check that the emulator is recognized by running:
   ```bash
   flutter devices
   ```

### Step 6: Create and Run a Flutter Project

To create a new Flutter project, run:

```bash
flutter create flutter_project
```

Navigate to the project directory:

```bash
cd flutter_project
```

Run the app:

```bash
flutter run
```

### Step 7: File structure for innitial code change

```bash
lib/
├── screens/
│   └── admin/
│       ├── dashboard.dart
│       ├── forgotPassword.dart
│       ├── home.dart
│       ├── login.dart
│       └── register.dart
├── services/
│   └── auth_service.dart
└── main.dart
```

Description of Folders and Files:

- **lib/**: Main source directory for the Flutter application.
- **screens/**: Contains different screens or UI components of the app.
  - **admin/**: Holds the screens related to admin functionalities such as:
    - `dashboard.dart`: Likely the main admin dashboard.
    - `forgotPassword.dart`: Screen for password recovery.
    - `home.dart`: Admin home screen.
    - `login.dart`: Login screen for admin.
    - `register.dart`: Registration screen for admin.
- **services/**: Contains services, such as:
  - `auth_service.dart`: Authentication service to handle login, register, etc.
- **main.dart**: Entry point of the Flutter application.
