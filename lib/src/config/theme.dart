import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004f99),
      surfaceTint: Color(0xff005eb4),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2974ce),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff495f83),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc8dbff),
      onSecondaryContainer: Color(0xff2d4365),
      tertiary: Color(0xff76318c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff9f57b4),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff191c21),
      onSurfaceVariant: Color(0xff414752),
      outline: Color(0xff727783),
      outlineVariant: Color(0xffc1c6d4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3037),
      inversePrimary: Color(0xffa8c8ff),
      primaryFixed: Color(0xffd5e3ff),
      onPrimaryFixed: Color(0xff001b3c),
      primaryFixedDim: Color(0xffa8c8ff),
      onPrimaryFixedVariant: Color(0xff004689),
      secondaryFixed: Color(0xffd5e3ff),
      onSecondaryFixed: Color(0xff011b3c),
      secondaryFixedDim: Color(0xffb1c7f0),
      onSecondaryFixedVariant: Color(0xff314769),
      tertiaryFixed: Color(0xfffbd7ff),
      onTertiaryFixed: Color(0xff330044),
      tertiaryFixedDim: Color(0xfff0b0ff),
      onTertiaryFixedVariant: Color(0xff6c2782),
      surfaceDim: Color(0xffd8dae2),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3fb),
      surfaceContainer: Color(0xffecedf6),
      surfaceContainerHigh: Color(0xffe6e8f0),
      surfaceContainerHighest: Color(0xffe1e2ea),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004282),
      surfaceTint: Color(0xff005eb4),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2974ce),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2d4365),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff60759a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff68227e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff9f57b4),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff191c21),
      onSurfaceVariant: Color(0xff3d434e),
      outline: Color(0xff5a5f6b),
      outlineVariant: Color(0xff757b87),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3037),
      inversePrimary: Color(0xffa8c8ff),
      primaryFixed: Color(0xff2a75cf),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff005baf),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff60759a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff475d80),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff9f57b4),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff843e99),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd8dae2),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3fb),
      surfaceContainer: Color(0xffecedf6),
      surfaceContainerHigh: Color(0xffe6e8f0),
      surfaceContainerHighest: Color(0xffe1e2ea),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002248),
      surfaceTint: Color(0xff005eb4),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004282),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff082243),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff2d4365),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3e0051),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff68227e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1f242e),
      outline: Color(0xff3d434e),
      outlineVariant: Color(0xff3d434e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3037),
      inversePrimary: Color(0xffe4ecff),
      primaryFixed: Color(0xff004282),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff002c5b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff2d4365),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff152d4e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff68227e),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4e0066),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd8dae2),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3fb),
      surfaceContainer: Color(0xffecedf6),
      surfaceContainerHigh: Color(0xffe6e8f0),
      surfaceContainerHighest: Color(0xffe1e2ea),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffa8c8ff),
      surfaceTint: Color(0xffa8c8ff),
      onPrimary: Color(0xff003061),
      primaryContainer: Color(0xff186ac4),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffb1c7f0),
      onSecondary: Color(0xff1a3152),
      secondaryContainer: Color(0xff2a4062),
      onSecondaryContainer: Color(0xffbfd5ff),
      tertiary: Color(0xfff0b0ff),
      onTertiary: Color(0xff53066a),
      tertiaryContainer: Color(0xff954eaa),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff111319),
      onSurface: Color(0xffe1e2ea),
      onSurfaceVariant: Color(0xffc1c6d4),
      outline: Color(0xff8b919d),
      outlineVariant: Color(0xff414752),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2ea),
      inversePrimary: Color(0xff005eb4),
      primaryFixed: Color(0xffd5e3ff),
      onPrimaryFixed: Color(0xff001b3c),
      primaryFixedDim: Color(0xffa8c8ff),
      onPrimaryFixedVariant: Color(0xff004689),
      secondaryFixed: Color(0xffd5e3ff),
      onSecondaryFixed: Color(0xff011b3c),
      secondaryFixedDim: Color(0xffb1c7f0),
      onSecondaryFixedVariant: Color(0xff314769),
      tertiaryFixed: Color(0xfffbd7ff),
      onTertiaryFixed: Color(0xff330044),
      tertiaryFixedDim: Color(0xfff0b0ff),
      onTertiaryFixedVariant: Color(0xff6c2782),
      surfaceDim: Color(0xff111319),
      surfaceBright: Color(0xff36393f),
      surfaceContainerLowest: Color(0xff0b0e14),
      surfaceContainerLow: Color(0xff191c21),
      surfaceContainer: Color(0xff1d2025),
      surfaceContainerHigh: Color(0xff272a30),
      surfaceContainerHighest: Color(0xff32353b),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffafccff),
      surfaceTint: Color(0xffa8c8ff),
      onPrimary: Color(0xff001633),
      primaryContainer: Color(0xff4e91ed),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffb5ccf5),
      onSecondary: Color(0xff001633),
      secondaryContainer: Color(0xff7c92b8),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff2b6ff),
      onTertiary: Color(0xff2b0039),
      tertiaryContainer: Color(0xffbe74d3),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff111319),
      onSurface: Color(0xfffbfaff),
      onSurfaceVariant: Color(0xffc6cbd8),
      outline: Color(0xff9ea3b0),
      outlineVariant: Color(0xff7e8390),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2ea),
      inversePrimary: Color(0xff00488b),
      primaryFixed: Color(0xffd5e3ff),
      onPrimaryFixed: Color(0xff001129),
      primaryFixedDim: Color(0xffa8c8ff),
      onPrimaryFixedVariant: Color(0xff00366c),
      secondaryFixed: Color(0xffd5e3ff),
      onSecondaryFixed: Color(0xff001129),
      secondaryFixedDim: Color(0xffb1c7f0),
      onSecondaryFixedVariant: Color(0xff203758),
      tertiaryFixed: Color(0xfffbd7ff),
      onTertiaryFixed: Color(0xff23002f),
      tertiaryFixedDim: Color(0xfff0b0ff),
      onTertiaryFixedVariant: Color(0xff591170),
      surfaceDim: Color(0xff111319),
      surfaceBright: Color(0xff36393f),
      surfaceContainerLowest: Color(0xff0b0e14),
      surfaceContainerLow: Color(0xff191c21),
      surfaceContainer: Color(0xff1d2025),
      surfaceContainerHigh: Color(0xff272a30),
      surfaceContainerHighest: Color(0xff32353b),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffbfaff),
      surfaceTint: Color(0xffa8c8ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffafccff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffbfaff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb5ccf5),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fa),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfff2b6ff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff111319),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffbfaff),
      outline: Color(0xffc6cbd8),
      outlineVariant: Color(0xffc6cbd8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2ea),
      inversePrimary: Color(0xff002a56),
      primaryFixed: Color(0xffdce7ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffafccff),
      onPrimaryFixedVariant: Color(0xff001633),
      secondaryFixed: Color(0xffdce7ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb5ccf5),
      onSecondaryFixedVariant: Color(0xff001633),
      tertiaryFixed: Color(0xfffcddff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfff2b6ff),
      onTertiaryFixedVariant: Color(0xff2b0039),
      surfaceDim: Color(0xff111319),
      surfaceBright: Color(0xff36393f),
      surfaceContainerLowest: Color(0xff0b0e14),
      surfaceContainerLow: Color(0xff191c21),
      surfaceContainer: Color(0xff1d2025),
      surfaceContainerHigh: Color(0xff272a30),
      surfaceContainerHighest: Color(0xff32353b),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
