# flutter_template_riverpod

MonstarLab Flutter Template w/Riverpod

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials, samples, guidance on
mobile development, and a full API reference.

## How to build
- run below command
```
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

## Run 
### Run iOS/Android using Visual Studio
- create launch.json and add below
```
{
  // Use IntelliSense to learn about possible attributes.
  // Hover to view descriptions of existing attributes.
  // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
  "version": "0.2.0",
  "configurations": [
    {
      "name": "flutter_template_riverpod(development mode)",
      "request": "launch",
      "type": "dart",
      "program": "lib/main/main_development.dart",
      "args": [
        "--flavor",
        "Development",
       ]
    },
    {
      "name": "flutter_template_riverpod (release mode)",
      "request": "launch",
      "type": "dart",
      "flutterMode": "release",
      "program": "lib/main/main_production.dart",
      "args": [
        "--flavor",
        "Release",
      ]
    }
  ]
}
```

### run iOS/Android From terminal
```
- flutter run --flavor Development -t lib/main/main_development.dart
```

### run iOS using xcode
- Select Development schema from top center and run in development mode(Debug)
- Should select Production for archive release mode ipa file