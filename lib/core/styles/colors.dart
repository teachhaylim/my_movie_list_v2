import "package:flutter/material.dart";
import "package:my_movie_list_v2/core/config/getter.dart";

class AppColors {
  final Color accent1 = const Color(0xFFC4161C);
  final Color accent2 = Colors.black;

  final Color offWhite = const Color(0xFFedf2f4);
  final Color offBlack = const Color(0xFF292929);

  final Color white = Colors.white;
  final Color black = Colors.black;

  final Color error = Colors.red.shade400;
  final Color errorAlt = Colors.blue.shade400;

  final Color grey = const Color(0xFF494949);
  final Color greyBody = const Color(0xFF636363);

  final Color lightGreyTextColor = const Color(0xFFF6F6F6);
  final Color mediumGreyTextColor = const Color(0xFFBCBCBC);
  final Color darkGreyTextColor = const Color(0xFF636363);

  final Color backgroundColor = const Color(0xFF121212);
  final Color buttonGreyColor = const Color(0xFF3E3E3E);

  final bool isDark = true;

  ThemeData toThemeData() {
    final TextTheme txtTheme = (isDark ? ThemeData.dark() : ThemeData.light()).textTheme;
    TextTheme textTheme = TextTheme(
      displayLarge: txtTheme.displayLarge,
      displayMedium: txtTheme.displayMedium,
      displaySmall: txtTheme.displaySmall,
      headlineLarge: txtTheme.headlineLarge,
      headlineMedium: txtTheme.headlineMedium,
      headlineSmall: txtTheme.headlineSmall,
      titleLarge: txtTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800, fontSize: 24),
      titleMedium: txtTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700, fontSize: 20),
      titleSmall: txtTheme.titleSmall,
      bodyLarge: txtTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
      bodyMedium: txtTheme.bodyMedium,
      bodySmall: txtTheme.bodySmall,
      labelLarge: txtTheme.labelLarge,
      labelMedium: txtTheme.labelMedium,
      labelSmall: txtTheme.labelSmall,
    );

    Color txtColor = isDark ? white : black;

    ColorScheme colorScheme = ColorScheme(
      brightness: isDark ? Brightness.dark : Brightness.light,
      primary: accent1,
      onPrimary: txtColor,
      // primaryContainer: txtColor,
      secondary: accent1,
      onSecondary: txtColor,
      // secondaryContainer: txtColor,
      // tertiary: accent1,
      // tertiaryContainer: accent1,
      background: black,
      onBackground: txtColor,
      surface: offBlack,
      onSurface: txtColor,
      error: error,
      onError: white,
    );

    var themeData = ThemeData.from(textTheme: textTheme, colorScheme: colorScheme, useMaterial3: true).copyWith(
      textSelectionTheme: TextSelectionThemeData(cursorColor: accent1),
      scaffoldBackgroundColor: backgroundColor,
      highlightColor: accent1,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(50, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular($styles.corners.circular),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(50, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular($styles.corners.circular),
          ),
          foregroundColor: Colors.white,
        ),
      ),
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ElevatedButton.styleFrom(
      //     padding: const EdgeInsets.symmetric(vertical: 16),
      //     elevation: 0,
      //     minimumSize: const Size(double.infinity, 50),
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(13),
      //     ),
      //     textStyle: const TextStyle(
      //       fontWeight: FontWeight.w500,
      //       fontSize: 15,
      //     ),
      //   ),
      // ),
    );

    return themeData;
  }
}
