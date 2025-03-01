import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      colorScheme: colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
             4
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0XFFFFFFFF),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appTheme.blueA700,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(
             4
            ),
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: appTheme.black900,
          fontSize: (
           14
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        labelMedium: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: (
           11
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray800,
          fontSize: (
           14
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray800,
          fontSize: (
            12
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        headlineLarge: TextStyle(
          color: appTheme.redA700,
          fontSize: (
            32
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900,
          fontSize: (
            16
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.blueA700,
          fontSize: (
         9
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: (
          24
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        bodySmall: TextStyle(
          color: appTheme.black900,
          fontSize: (
           10
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray800,
          fontSize: (
           20
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
      visualDensity: VisualDensity.standard,
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    background: Color(0XFF4D4C4C),
    error: Color(0XFF292D37),
    errorContainer: Color(0XFF9D9D9D),
    inversePrimary: Color(0XFF4D4C4C),
    inverseSurface: Color(0XFF292D37),
    onBackground: Color(0XFF040415),
    onError: Color(0XFFF6F6F6),
    onErrorContainer: Color(0XFF3D0F0F),
    onInverseSurface: Color(0XFFF6F6F6),
    onPrimary: Color(0XFF292D37),
    onPrimaryContainer: Color(0XFF040415),
    onSecondary: Color(0XFF040415),
    onSecondaryContainer: Color(0XFF292D37),
    onSurface: Color(0XFF040415),
    onSurfaceVariant: Color(0XFF292D37),
    onTertiary: Color(0XFF040415),
    onTertiaryContainer: Color(0XFF292D37),
    outline: Color(0XFF292D37),
    outlineVariant: Color(0XFF4D4C4C),
    primary: Color(0XFFFFFFFF),
    primaryContainer: Color(0XFF4D4C4C),
    scrim: Color(0XFF4D4C4C),
    secondary: Color(0XFF4D4C4C),
    secondaryContainer: Color(0X33FFFFFF),
    shadow: Color(0XFF292D37),
    surface: Color(0XFF4D4C4C),
    surfaceTint: Color(0XFF292D37),
    surfaceVariant: Color(0X33FFFFFF),
    tertiary: Color(0XFF4D4C4C),
    tertiaryContainer: Color(0X33FFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);
  // Blue
  Color get blueA700 => Color(0XFF0066FF);
  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray10001 => Color(0XFFCBCBCB);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray800 => Color(0XFF365342);
  // DeepPurple
  Color get deepPurple900 => Color(0XFF2E087D);
  Color get deepPurpleA200 => Color(0XFF9747FF);
  // Gray
  Color get gray100 => Color(0XFFF3F3F3);
  Color get gray10001 => Color(0XFFF4F4F4);
  Color get gray10002 => Color(0XFFF2F2F2);
  Color get gray200 => Color(0XFFEDEDED);
  Color get gray20001 => Color(0XFFEEEEEE);
  Color get gray20002 => Color(0XFFEFEFEF);
  Color get gray500 => Color(0XFF999999);
  Color get gray600 => Color(0XFF6C6C6C);
  Color get gray700 => Color(0XFF5A5A5A);
  Color get gray70001 => Color(0XFF696969);
  Color get gray800 => Color(0XFF444444);
  Color get gray80001 => Color(0XFF4B4B4B);
  Color get gray80002 => Color(0XFF464646);
  Color get gray80003 => Color(0XFF383838);
  Color get gray90087 => Color(0X871D1D1D);
  // GrayDd
  Color get gray100Dd => Color(0XDDF5F5F5);
  // GrayD
  Color get gray600D9 => Color(0XD97E7E7E);
  // Green
  Color get green600 => Color(0XFF26A843);
  Color get greenA400 => Color(0XFF0BE58A);
  Color get greenA40001 => Color(0XFF0AE589);
  Color get greenA700 => Color(0XFF00C06F);
  // Indigo
  Color get indigo800 => Color(0XFF223780);
  // LightGreen
  Color get lightGreen700 => Color(0XFF5EAC24);
  Color get lightGreen800 => Color(0XFF418D1D);
  Color get lightGreen900 => Color(0XFF409100);
  // Lime
  Color get lime400 => Color(0XFFCCD660);
  // Pink
  Color get pink600 => Color(0XFFD63C61);
  // Red
  Color get red600 => Color(0XFFEB3223);
  Color get red60001 => Color(0XFFD6433A);
  Color get redA400 => Color(0XFFFF2147);
  Color get redA700 => Color(0XFFC20000);
  Color get redA70001 => Color(0XFFEC0000);
  // Teal
  Color get teal500 => Color(0XFF009289);
  Color get teal900 => Color(0XFF104A51);
  // Yellow
  Color get yellow900 => Color(0XFFFF8719);
  Color get yellow90001 => Color(0XFFCC8111);
  Color get yellow90002 => Color(0XFFFF8312);
  Color get yellowA700 => Color(0XFFFFD600);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
