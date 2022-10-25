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

## How to run

- run below command

```
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### Visual Studio

Launch Configurations are included in the `.vscode/launch.json` file.

### Android Studio

Launch Configurations are included in the `.run` folder. 