import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

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
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.indigo300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.tealA700,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.errorContainer,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray400,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.errorContainer,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 32.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onSecondaryContainer,
          fontSize: 28.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onSecondaryContainer,
          fontSize: 24.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray500,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onSecondaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 15.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0X0AE3DBF3),
    primaryContainer: Color(0XFF475466),
    secondary: Color(0XFF475466),
    secondaryContainer: Color(0XFFFFFFFF),
    tertiary: Color(0XFF475466),
    tertiaryContainer: Color(0XFFFFFFFF),

    // Background colors
    background: Color(0XFF475466),

    // Surface colors
    surface: Color(0XFF475466),
    surfaceTint: Color(0XFF1D2838),
    surfaceVariant: Color(0XFFFFFFFF),

    // Error colors
    error: Color(0XFF1D2838),
    errorContainer: Color(0XFF8C8F93),
    onError: Color(0X0AE3DBF3),
    onErrorContainer: Color(0XFF1C2433),

    // On colors(text colors)
    onBackground: Color(0XFFFFFFFF),
    onInverseSurface: Color(0X0AE3DBF3),
    onPrimary: Color(0XFF1D2838),
    onPrimaryContainer: Color(0XFFFFFFFF),
    onSecondary: Color(0XFFFFFFFF),
    onSecondaryContainer: Color(0XFF2E3032),
    onTertiary: Color(0XFFFFFFFF),
    onTertiaryContainer: Color(0XFF2E3032),

    // Other colors
    outline: Color(0XFF1D2838),
    outlineVariant: Color(0XFF475466),
    scrim: Color(0XFF475466),
    shadow: Color(0XFF1D2838),

    // Inverse colors
    inversePrimary: Color(0XFF475466),
    inverseSurface: Color(0XFF1D2838),

    // Pending colors
    onSurface: Color(0XFFFFFFFF),
    onSurfaceVariant: Color(0XFF2E3032),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber500 => Color(0XFFFFC107);

  // Black
  Color get black900 => Color(0XFF000000);

  // BlueGray
  Color get blueGray300 => Color(0XFF98A1B2);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray500 => Color(0XFF667084);
  Color get blueGray900 => Color(0XFF18264D);

  // Gray
  Color get gray100 => Color(0XFFF2F4F6);
  Color get gray400 => Color(0XFFAEAEAE);
  Color get gray50 => Color(0XFFF9F9F9);

  // Indigo
  Color get indigo300 => Color(0XFF5691C2);
  Color get indigo50 => Color(0XFFE4E6EB);

  // LightBlue
  Color get lightBlue500 => Color(0XFF0BA4EB);

  // Lime
  Color get limeA200 => Color(0XFFE5F64A);

  // Red
  Color get red300 => Color(0XFFF76961);

  // Teal
  Color get teal700 => Color(0XFF1B8759);
  Color get tealA700 => Color(0XFF00B2AB);

  // Yellow
  Color get yellow800 => Color(0XFFF79F1B);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();