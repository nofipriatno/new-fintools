# Fintools
Fintools Project MFIN

### Project Requirement :
 1.  Flutter version 2.8.1
 2.  Dart version 2.15.1

### How To Build :
 Just Provide for Android Studio :
 - Build prod version :
 flutter build apk --split-per-abi -t lib/main_prod.dart flavor prod

 - Build dev version :
 flutter build apk --split-per-abi -t lib/main_dev.dart flavor dev

 VSCode :
 - search in google how to create launch.json with above setting

 IOS can running, with this flutter run -t lib/main_dev.dart flavor dev,
 but for build archive/ipa must register appbundle Id first, which is must pay $99 per annual.

### Library/3rd Party Used :
 - [Dio](https://pub.dev/packages/dio) for Http request
 - [Alice](https://pub.dev/packages/alice) for Http interceptor
 - [bloc](https://pub.dev/packages/bloc) for State Management
 - [carousel_slider](https://pub.dev/packages/carousel_slider)
 - [connectivity_plus](https://pub.dev/packages/connectivity_plus)
 - [dartz](https://pub.dev/packages/dartz)
 - [drift](https://pub.dev/packages/drift) for Local Database
 - [dropdown_search](https://pub.dev/packages/dropdown_search)
 - [file_picker](https://pub.dev/packages/file_picker)
 - [flutter_bloc](https://pub.dev/packages/flutter_bloc) for State Management
 - [flutter_easyloading](https://pub.dev/packages/flutter_easyloading)
 - [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage) for support Hive Plugin
 - [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) for responsive size text
 - [flutter_svg](https://pub.dev/packages/flutter_svg)
 - [freezed](https://pub.dev/packages/freezed) for annotation and override class
 - [geolocator](https://pub.dev/packages/geolocator)
 - [get_it](https://pub.dev/packages/get_it) service locator for support Injectable
 - [hive](https://pub.dev/packages/hive) shared preferences replacement
 - [hive_flutter](https://pub.dev/packages/hive_flutter) extension for hive
 - [image_picker](https://pub.dev/packages/image_picker)
 - [injectable](https://pub.dev/packages/injectable) for DI
 - [intl](https://pub.dev/packages/intl) for localization
 - [json_annotation](https://pub.dev/packages/json_annotation) for serializable
 - [path](https://pub.dev/packages/path)
 - [path_provider](https://pub.dev/packages/path_provider)
 - [sqlite3_flutter_libs](https://pub.dev/packages/sqlite3_flutter_libs) for support Drift
 - [url_launcher](https://pub.dev/packages/url_launcher) for open map

### Folder Structure
  Using [DDD](https://resocoder.com/2020/03/09/flutter-firebase-ddd-course-1-domain-driven-design-principles/) design pattern but not strict.
  - lib/application => for logic/bloc
  - lib/domain => for model, constant, or interface
  - lib/infrastructure => for implementation of interface
  - lib/presentation => for component, UI, or page
  - lib/utilities => for utilities
  - lib/utilities/i10n => for localization (intl_en.arb for english translation) (intl_id.arb for indonesian translation)

### Misc
 - Using this command in terminal to generate new model, database, new injection : flutter pub run build_runner build --delete-conflicting-outputs
 - To Generate localization use plugin in android studio/vscode Flutter intl, every added new key value in arb file, this will auto generate localization.

## Find Me on :

 - [linkedIn](https://www.linkedin.com/in/yudhistira-yoga-0872a6184)
 - [Email](mailto:Yudhistiray198@gmail.com)
 - [Github](https://github.com/Suzaku10)
