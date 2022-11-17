# flutter_template_riverpod

MonstarLab Flutter Template w/Riverpod 2.x

## Premise

Based loosely around the
prior [MonstarLab Flutter Template](https://github.com/monstar-lab-oss/flutter-template) which uses
BLOC instead of Riverpod. The main theme is Anime News. The API used
is [Jikan API (4.0.0)](https://docs.api.jikan.moe) which is an unofficial API for the well
known [MyAnimeList](https://myanimelist.net/) website. No API key is required as of creation, making
it ideal for a demo/template.

## Concepts demonstrated

- [Flutter Riverpod Architecture](https://codewithandrea.com/articles/flutter-app-architecture-riverpod-introduction/)
  - Presentation, Application, Domain and Data Layers.
- Freezed Code Generation
- Riverpod Provider Generation
- Retrofit API calls, `toJson` function Generation.

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
### Android Studio
Launch Configurations are included in the `.run` folder. 


### Run iOS/Android using Visual Studio
- Follow .vscode/launch.json

### run iOS/Android From terminal
```
- flutter run --flavor Development -t lib/main/main_development.dart
```

### run iOS using xcode
- Select Development schema from top center and run in development mode(Debug)
- Should select Production for archive release mode ipa file

### Localization
- ref https://docs.flutter.dev/development/accessibility-and-localization/internationalization
- define localization string file in app_en.arb, app_ja.arb it will be automatically generated to use.
- use example - AppLocalizations.of(context)!.home_tab_profile