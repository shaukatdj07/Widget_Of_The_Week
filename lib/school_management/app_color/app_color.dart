import 'package:flutter/material.dart';

class AppColors {
  // Private constructor to prevent instantiation
  AppColors._();

  // ============ PRIMARY COLORS ============
  static const Color primary = Color(0xFF6200EE);
  static const Color primaryLight = Color(0xFF9E47FF);
  static const Color primaryDark = Color(0xFF0400BA);
  static const Color primaryVariant = Color(0xFF3700B3);

  // ============ SECONDARY COLORS ============
  static const Color secondary = Color(0xFF03DAC6);
  static const Color secondaryLight = Color(0xFF66FFF9);
  static const Color secondaryDark = Color(0xFF00A896);
  static const Color secondaryVariant = Color(0xFF018786);

  // ============ BACKGROUND COLORS ============
  static const Color background = Color(0xFFF6F6F6);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color scaffoldBackground = Color(0xFFFAFAFA);
  static const Color cardBackground = Color(0xFFFFFFFF);

  // ============ TEXT COLORS ============
  static const Color textPrimary = Color(0xFF000000);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textHint = Color(0xFF9E9E9E);
  static const Color textDisabled = Color(0xFFBDBDBD);
  static const Color textWhite = Color(0xFFFFFFFF);

  // ============ STATUS COLORS ============
  static const Color success = Color(0xFF4CAF50);
  static const Color successLight = Color(0xFFC8E6C9);
  static const Color error = Color(0xFFB00020);
  static const Color errorLight = Color(0xFFEF9A9A);
  static const Color warning = Color(0xFFFFC107);
  static const Color warningLight = Color(0xFFFFECB3);
  static const Color info = Color(0xFF2196F3);
  static const Color infoLight = Color(0xFFBBDEFB);

  // ============ NEUTRAL COLORS ============
  static const Color black = Color(0xFF000000);
  static const Color black54 = Colors.black54;
  static const Color black87 = Colors.black87;
  static const Color white = Color(0xFFFFFFFF);
  static const Color white70 = Colors.white70;
  static const Color transparent = Colors.transparent;

  // ============ GREY SCALE ============
  static const Color grey50 = Color(0xFFFAFAFA);
  static const Color grey100 = Color(0xFFF5F5F5);
  static const Color grey200 = Color(0xFFEEEEEE);
  static const Color grey300 = Color(0xFFE0E0E0);
  static const Color grey400 = Color(0xFFBDBDBD);
  static const Color grey500 = Color(0xFF9E9E9E);
  static const Color grey600 = Color(0xFF757575);
  static const Color grey700 = Color(0xFF616161);
  static const Color grey800 = Color(0xFF424242);
  static const Color grey900 = Color(0xFF212121);

  // ============ COMMON COLORS ============
  static const Color red = Color(0xFFF44336);
  static const Color pink = Color(0xFFE91E63);
  static const Color purple = Color(0xFF9C27B0);
  static const Color deepPurple = Color(0xFF673AB7);
  static const Color indigo = Color(0xFF3F51B5);
  static const Color blue = Color(0xFF2196F3);
  static const Color lightBlue = Color(0xFF03A9F4);
  static const Color cyan = Color(0xFF00BCD4);
  static const Color teal = Color(0xFF009688);
  static const Color green = Color(0xFF4CAF50);
  static const Color lightGreen = Color(0xFF8BC34A);
  static const Color lime = Color(0xFFCDDC39);
  static const Color yellow = Color(0xFFFFEB3B);
  static const Color amber = Color(0xFFFFC107);
  static const Color orange = Color(0xFFFF9800);
  static const Color deepOrange = Color(0xFFFF5722);
  static const Color brown = Color(0xFF795548);
  static const Color blueGrey = Color(0xFF607D8B);

  // ============ GRADIENT COLORS ============
  static const List<Color> primaryGradient = [
    Color(0xFF6200EE),
    Color(0xFF9E47FF),
  ];

  static const List<Color> sunsetGradient = [
    Color(0xFFFF6B6B),
    Color(0xFF4ECDC4),
  ];

  static const List<Color> oceanGradient = [
    Color(0xFF2193b0),
    Color(0xFF6dd5ed),
  ];

  // ============ SOCIAL MEDIA COLORS ============
  static const Color facebook = Color(0xFF4267B2);
  static const Color twitter = Color(0xFF1DA1F2);
  static const Color google = Color(0xFFDB4437);
  static const Color instagram = Color(0xFFC13584);
  static const Color linkedin = Color(0xFF0077B5);
  static const Color whatsapp = Color(0xFF25D366);
  static const Color youtube = Color(0xFFFF0000);

  // ============ HELPER METHODS ============

  /// Get color with opacity
  static Color withOpacity(Color color, double opacity) {
    return color.withOpacity(opacity);
  }

  /// Lighten color by percentage (0-100)
  static Color lighten(Color color, [double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(color);
    final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
    return hslLight.toColor();
  }

  /// Darken color by percentage (0-100)
  static Color darken(Color color, [double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return hslDark.toColor();
  }

  /// Check if color is light
  static bool isLight(Color color) {
    return color.computeLuminance() > 0.5;
  }

  /// Get contrasting text color (black or white)
  static Color getContrastingTextColor(Color backgroundColor) {
    return isLight(backgroundColor) ? black : white;
  }

  /// Convert hex string to Color
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Convert Color to hex string
  static String toHex(Color color) {
    return '#${color.value.toRadixString(16).substring(2)}';
  }
}

// ============ EXTENSIONS ============

extension ColorExtension on Color {
  /// Lighten color
  Color lighten([double amount = 0.1]) {
    final hsl = HSLColor.fromColor(this);
    final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
    return hslLight.toColor();
  }

  /// Darken color
  Color darken([double amount = 0.1]) {
    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return hslDark.toColor();
  }

  /// Convert to hex string
  String toHex() {
    return '#${value.toRadixString(16).substring(2)}';
  }
}

// ============ THEME HELPER ============

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.surface,
      error: AppColors.error,
      onPrimary: AppColors.white,
      onSecondary: AppColors.black,
      onSurface: AppColors.textPrimary,
      onError: AppColors.white,
    ),
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    appBarTheme: const AppBarTheme(
      color: AppColors.primary,
      foregroundColor: AppColors.white,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primaryDark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryDark,
      secondary: AppColors.secondaryDark,
      surface: AppColors.grey800,
      error: AppColors.error,
      onPrimary: AppColors.white,
      onSecondary: AppColors.white,
      onSurface: AppColors.white,
      onError: AppColors.white,
    ),
    scaffoldBackgroundColor: AppColors.grey900,
    appBarTheme: const AppBarTheme(
      color: AppColors.grey800,
      foregroundColor: AppColors.white,
    ),
  );
}