import 'package:flutter/material.dart';

const _pinkPrimaryValue = 0xFFff758c;
const _pinkPrimary = Color(_pinkPrimaryValue);
const _inputBorderGray = Color(0xFFDDDEDF);
const _inputLabelGray = Color(0xFFA0A0A0);
const _buttonDisabledColor = Color(0xFFffccd5);
const _labelMediumGray = Color(0xFF505050);
const _titleBlack = Color(0xFF2e2e2e);

const _materialColorPink = MaterialColor(
  _pinkPrimaryValue, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
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

final pinkTheme = ThemeData(
  // colorScheme: ColorScheme.fromSeed(
  //   seedColor: _pinkPrimary,
  //   // primary: _pinkPrimary,
  // ),
  // colorSchemeSeed: _pinkPrimary,
  fontFamily: 'Karla',
  primarySwatch: _materialColorPink,
  primaryColor: _pinkPrimary,
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    labelLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
    labelMedium: TextStyle(fontSize: 15, color: _labelMediumGray),
    titleMedium: TextStyle(fontSize: 20, color: _labelMediumGray),
    titleLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 28,
      color: _titleBlack,
    ),
    titleSmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: _titleBlack,
    ),
    bodyMedium: TextStyle(fontSize: 16, color: _labelMediumGray, height: 1.5),
    bodyLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: _inputLabelGray,
    ),
    bodySmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: _pinkPrimary,
    ),
    headlineSmall: TextStyle(fontSize: 16, color: _titleBlack),
  ),
  inputDecorationTheme: ThemeData.light().inputDecorationTheme.copyWith(
        contentPadding: const EdgeInsets.only(bottom: 5),
        labelStyle: const TextStyle(
          fontFamily: 'Karla',
          fontSize: 17,
          fontWeight: FontWeight.normal,
          color: _inputLabelGray,
          height: 20,
        ),
        floatingLabelStyle: const TextStyle(
          fontFamily: 'SFUIDisplay',
          fontSize: 13,
          color: _inputLabelGray,
          fontWeight: FontWeight.normal,
        ),
        errorStyle: const TextStyle(
          fontSize: 12,
          fontFamily: 'SFProText',
          color: _pinkPrimary,
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: _pinkPrimary, width: 1.0),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: _pinkPrimary, width: 1.0),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: _inputBorderGray, width: 1.0),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: _inputBorderGray, width: 1.0),
        ),
        // disabledBorder: UnderlineInputBorder(
        //   borderSide:
        //       BorderSide(color: _inputBorderGray.withAlpha(200), width: 1.0),
        // ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: _pinkPrimary, width: 1.0),
        ),
      ),
  checkboxTheme: ThemeData.light().checkboxTheme.copyWith(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        side: const BorderSide(color: _pinkPrimary, width: 2),
      ),
  buttonTheme: const ButtonThemeData(
    disabledColor: _buttonDisabledColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(

      // style: ElevatedButton.styleFrom(
      //   // onSurface: _buttonDisabledColor,
      //   onPrimary: Colors.white,
      //   minimumSize: const Size.fromHeight(_elevatedButtonHeight),

      // ),

      style: ButtonStyle(
    textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {
      return const TextStyle(
        fontFamily: 'Helvetica',
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
    // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //   RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(4.0),
    //   ),
    // ),
  )),
  floatingActionButtonTheme:
      ThemeData.light().floatingActionButtonTheme.copyWith(
            backgroundColor: _pinkPrimary,
            foregroundColor: Colors.white,
          ),
);
