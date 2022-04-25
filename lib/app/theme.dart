import 'package:flutter/material.dart';

import 'gen/fonts.gen.dart';

const _pinkPrimaryValue = 0xFFff758c;
const _pinkPrimary = Color(_pinkPrimaryValue);
const _inputBorderColor = Color(0xFFDDDEDF);
const _inputLabelColor = Color(0xFFA0A0A0);
const _buttonDisabledColor = Color(0xFFffccd5);
const _labelMediumColor = Color(0xFF505050);
const _titleBlackColor = Color(0xFF2e2e2e);

const _materialColorPink = MaterialColor(
  _pinkPrimaryValue, // default
  <int, Color>{
    50: _pinkPrimary, //10%
    100: _pinkPrimary, //20%
    200: _pinkPrimary, //30%
    300: _pinkPrimary, //40%
    400: _pinkPrimary, //50%
    500: _pinkPrimary, //60%
    600: _pinkPrimary, //70%
    700: _pinkPrimary, //80%
    800: _pinkPrimary, //90%
    900: _pinkPrimary, //100%
  },
);

const _textTheme = TextTheme(
  labelLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
  labelMedium: TextStyle(fontSize: 15, color: _labelMediumColor),
  titleMedium: TextStyle(fontSize: 20, color: _labelMediumColor),
  titleLarge: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 28,
    color: _titleBlackColor,
  ),
  titleSmall: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: _titleBlackColor,
  ),
  bodyMedium: TextStyle(fontSize: 16, color: _labelMediumColor, height: 1.5),
  bodyLarge: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: _inputLabelColor,
  ),
  bodySmall: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: _pinkPrimary,
  ),
  headlineSmall: TextStyle(fontSize: 16, color: _titleBlackColor),
);

final _inputDecorationTheme = ThemeData.light()
    .inputDecorationTheme //
    .copyWith(
      contentPadding: const EdgeInsets.only(bottom: 5),
      labelStyle: const TextStyle(
        fontFamily: FontFamily.karla,
        fontSize: 17,
        fontWeight: FontWeight.normal,
        color: _inputLabelColor,
        height: 20,
      ),
      floatingLabelStyle: const TextStyle(
        fontFamily: FontFamily.sFUIDisplay,
        fontSize: 13,
        color: _inputLabelColor,
        fontWeight: FontWeight.normal,
      ),
      errorStyle: const TextStyle(
        fontSize: 12,
        fontFamily: FontFamily.sFProText,
        color: _pinkPrimary,
      ),
      errorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: _pinkPrimary, width: 1.0),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: _pinkPrimary, width: 1.0),
      ),
      border: const UnderlineInputBorder(
        borderSide: BorderSide(color: _inputBorderColor, width: 1.0),
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: _inputBorderColor, width: 1.0),
      ),
      // disabledBorder: UnderlineInputBorder(
      //   borderSide:
      //       BorderSide(color: _inputBorderGray.withAlpha(200), width: 1.0),
      // ),
      focusedErrorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: _pinkPrimary, width: 1.0),
      ),
    );

final _checkboxTheme = ThemeData.light()
    .checkboxTheme //
    .copyWith(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      side: const BorderSide(color: _pinkPrimary, width: 2),
    );

const _buttonTheme = ButtonThemeData(
  disabledColor: _buttonDisabledColor,
);

final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
  textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {
    return const TextStyle(
      fontFamily: FontFamily.helvetica,
      fontSize: 16,
      letterSpacing: 0.32,
    );
  }),
  foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
    return Colors.white; // Regular color
  }),
  backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
    if (states.contains(MaterialState.disabled)) {
      return _buttonDisabledColor; // Disabled color
    }
    return _pinkPrimary; // Regular color
  }),
));

final _floatingActionButtonTheme =
    ThemeData.light().floatingActionButtonTheme.copyWith(
          backgroundColor: _pinkPrimary,
          foregroundColor: Colors.white,
        );

final ThemeData mainTheme = ThemeData(
  fontFamily: FontFamily.karla,
  primarySwatch: _materialColorPink,
  primaryColor: _pinkPrimary,
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textTheme: _textTheme,
  inputDecorationTheme: _inputDecorationTheme,
  checkboxTheme: _checkboxTheme,
  buttonTheme: _buttonTheme,
  elevatedButtonTheme: _elevatedButtonTheme,
  floatingActionButtonTheme: _floatingActionButtonTheme,
);
