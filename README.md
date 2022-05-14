# Pokedex

A beautiful flutter app created using the PokeApi.

<img width="1454" alt="Screenshot 2022-05-14 at 23 54 22" src="https://user-images.githubusercontent.com/23453229/168448298-14071f06-5e5d-4250-89d2-3341ef5afff2.png">

## Architecture
The app is built using the ``Bloc archietcure`` and the following libraries:
- [Google Fonts](https://pub.dev/packages/google_fonts)
- [GetIt](https://pub.dev/packages/get_it) - For dependency injection
- [Injectable](https://pub.dev/packages/injectable) - Code generator for get_it.
- [Freezed Annotation](https://pub.dev/packages/freezed_annotation) - Annotations for the freezed code-generator
- [Flutter Bloc](https://pub.dev/packages/flutter_bloc) - Flutter business Logic Component
- [DIO](https://pub.dev/packages/dio) - Netwok requests
- [Floor](https://pub.dev/packages/floor) - Apps local database
- [Bloc Test](https://pub.dev/packages/bloc_test)
- [cached_network_image](https://pub.dev/packages/cached_network_image)
- [equatable](https://pub.dev/packages/equatable) - For value based equality
- [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) - For adapting screen and font size

## Getting Started
Clone the app and run
```dart
flutter pub get;
flutter run;
```
To run the tests, use:
```dart
flutter test;
```
