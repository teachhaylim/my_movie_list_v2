// ignore_for_file: library_private_types_in_public_api

import "package:flutter/material.dart";
import "package:my_movie_list_v2/core/config/getter.dart";
import "package:my_movie_list_v2/core/styles/colors.dart";

@immutable
class AppStyles {
  AppStyles({Size? screenSize}) {
    if (screenSize == null) {
      scale = 1;
      return;
    }
    final shortestSide = screenSize.shortestSide;
    const tabletXl = 1000;
    const tabletLg = 800;
    const tabletSm = 600;
    const phoneLg = 400;

    if (shortestSide > tabletXl) {
      scale = 1.25;
    } else if (shortestSide > tabletLg) {
      scale = 1.15;
    } else if (shortestSide > tabletSm) {
      scale = 1;
    } else if (shortestSide > phoneLg) {
      scale = .9; // phone
    } else {
      scale = .85; // small phone
    }

    $logger.i(">> AppStyles Initialized with scaling");
    $logger.i(">> screenSize: $screenSize, scale: $scale");
  }

  late final double scale;

  /// The current theme colors for the app
  final AppColors colors = AppColors();

  /// Rounded edge corner radius
  late final _Corners corners = _Corners();

  late final _Shadows shadows = _Shadows();

  /// Padding and margin values
  late final _Insets insets = _Insets(scale);

  /// Text styles
  // late final _Text text = _Text(scale);

  /// Animation Durations
  final _Times times = _Times();

  /// Shared sizes
  late final _Sizes sizes = _Sizes();

  late final _ButtonStyle buttonStyles = _ButtonStyle();
}

// @immutable
// class _Text {
//   _Text(this._scale);
//   final double _scale;

//   final Map<String, TextStyle> _titleFonts = {
//     'en': TextStyle(fontFamily: 'Tenor'),
//   };

//   final Map<String, TextStyle> _monoTitleFonts = {
//     'en': TextStyle(fontFamily: 'B612Mono'),
//   };

//   final Map<String, TextStyle> _quoteFonts = {
//     'en': TextStyle(fontFamily: 'Cinzel'),
//     'zh': TextStyle(fontFamily: 'MaShanZheng'),
//   };

//   final Map<String, TextStyle> _wonderTitleFonts = {
//     'en': TextStyle(fontFamily: 'Yeseva'),
//   };

//   final Map<String, TextStyle> _contentFonts = {
//     'en': TextStyle(fontFamily: 'Raleway', fontFeatures: const [
//       FontFeature.enable('kern'),
//     ]),
//   };

//   TextStyle _getFontForLocale(Map<String, TextStyle> fonts) {
//     if (localeLogic.isLoaded) {
//       return fonts.entries.firstWhere((x) => x.key == $strings.localeName, orElse: () => fonts.entries.first).value;
//     } else {
//       return fonts.entries.first.value;
//     }
//   }

//   TextStyle get titleFont => _getFontForLocale(_titleFonts);
//   TextStyle get quoteFont => _getFontForLocale(_quoteFonts);
//   TextStyle get wonderTitleFont => _getFontForLocale(_wonderTitleFonts);
//   TextStyle get contentFont => _getFontForLocale(_contentFonts);
//   TextStyle get monoTitleFont => _getFontForLocale(_monoTitleFonts);

//   late final TextStyle dropCase = _createFont(quoteFont, sizePx: 56, heightPx: 20);

//   late final TextStyle wonderTitle = _createFont(wonderTitleFont, sizePx: 64, heightPx: 56);

//   late final TextStyle h1 = _createFont(titleFont, sizePx: 64, heightPx: 62);
//   late final TextStyle h2 = _createFont(titleFont, sizePx: 32, heightPx: 46);
//   late final TextStyle h3 = _createFont(titleFont, sizePx: 24, heightPx: 36, weight: FontWeight.w600);
//   late final TextStyle h4 = _createFont(contentFont, sizePx: 14, heightPx: 23, spacingPc: 5, weight: FontWeight.w600);

//   late final TextStyle title1 = _createFont(titleFont, sizePx: 16, heightPx: 26, spacingPc: 5);
//   late final TextStyle title2 = _createFont(titleFont, sizePx: 14, heightPx: 16.38);

//   late final TextStyle body = _createFont(contentFont, sizePx: 16, heightPx: 26);
//   late final TextStyle bodyBold = _createFont(contentFont, sizePx: 16, heightPx: 26, weight: FontWeight.w600);
//   late final TextStyle bodySmall = _createFont(contentFont, sizePx: 14, heightPx: 23);
//   late final TextStyle bodySmallBold = _createFont(contentFont, sizePx: 14, heightPx: 23, weight: FontWeight.w600);

//   late final TextStyle quote1 = _createFont(quoteFont, sizePx: 32, heightPx: 40, weight: FontWeight.w600, spacingPc: -3);
//   late final TextStyle quote2 = _createFont(quoteFont, sizePx: 21, heightPx: 32, weight: FontWeight.w400);
//   late final TextStyle quote2Sub = _createFont(body, sizePx: 16, heightPx: 40, weight: FontWeight.w400);

//   late final TextStyle caption = _createFont(contentFont, sizePx: 14, heightPx: 20, weight: FontWeight.w500).copyWith(fontStyle: FontStyle.italic);

//   late final TextStyle callout = _createFont(contentFont, sizePx: 16, heightPx: 26, weight: FontWeight.w600).copyWith(fontStyle: FontStyle.italic);
//   late final TextStyle btn = _createFont(contentFont, sizePx: 14, weight: FontWeight.w500, spacingPc: 2, heightPx: 14);

//   TextStyle _createFont(TextStyle style, {required double sizePx, double? heightPx, double? spacingPc, FontWeight? weight}) {
//     sizePx *= _scale;
//     if (heightPx != null) {
//       heightPx *= _scale;
//     }
//     return style.copyWith(fontSize: sizePx, height: heightPx != null ? (heightPx / sizePx) : style.height, letterSpacing: spacingPc != null ? sizePx * spacingPc * 0.01 : style.letterSpacing, fontWeight: weight);
//   }
// }

@immutable
class _Times {
  /// Time value is 300
  final Duration fast = const Duration(milliseconds: 300);

  /// Time value is 400
  final Duration fastMed = const Duration(milliseconds: 400);

  /// Time value is 600
  final Duration med = const Duration(milliseconds: 600);

  /// Time value is 900
  final Duration slow = const Duration(milliseconds: 900);

  /// Time value is 200
  final Duration pageTransition = const Duration(milliseconds: 200);
}

@immutable
class _Corners {
  /// Radius value is 6
  late final double xs = 6;

  /// Radius value is 8
  late final double sm = 8;

  /// Radius value is 10
  late final double md = 10;

  /// Radius value is 12
  late final double lg = 12;

  /// Radius value is 100
  late final double circular = 100;
}

@immutable
class _Sizes {
  double get maxContentWidth1 => 800;
  double get maxContentWidth2 => 600;
  double get maxContentWidth3 => 500;
  final Size minAppSize = const Size(380, 675);
}

@immutable
class _Insets {
  _Insets(this._scale);
  final double _scale;

  /// Inset by 4
  late final double xxs = 4 * _scale;

  /// Inset by 8
  late final double xs = 8 * _scale;

  /// Inset by 16
  late final double sm = 16 * _scale;

  /// Inset by 24
  late final double md = 24 * _scale;

  /// Inset by 32
  late final double lg = 32 * _scale;

  /// Inset by 48
  late final double xl = 48 * _scale;

  /// Inset by 56
  late final double xxl = 56 * _scale;

  /// Inset by 80
  late final double offset = 80 * _scale;
}

@immutable
class _Shadows {
  final textSoft = [
    Shadow(color: Colors.black.withOpacity(.25), offset: const Offset(0, 2), blurRadius: 4),
  ];
  final text = [
    Shadow(color: Colors.black.withOpacity(.6), offset: const Offset(0, 2), blurRadius: 2),
  ];
  final textStrong = [
    Shadow(color: Colors.black.withOpacity(.6), offset: const Offset(0, 4), blurRadius: 6),
  ];
}

@immutable
class _ButtonStyle {
  final smallWhiteFilledStyle = FilledButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: $styles.colors.accent1,
    padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 23),
    minimumSize: const Size(50, 32),
    textStyle: TextStyle(fontWeight: FontWeight.w800, fontSize: 14, color: $styles.colors.accent1),
  );

  final smallRedFilledStyle = FilledButton.styleFrom(
    backgroundColor: $styles.colors.accent1,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 23),
    minimumSize: const Size(50, 32),
    textStyle: const TextStyle(fontWeight: FontWeight.w800, fontSize: 14, color: Colors.white),
  );

  final smallOutlinedStyle = OutlinedButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 23),
    minimumSize: const Size(50, 32),
    textStyle: const TextStyle(fontWeight: FontWeight.w800, fontSize: 14, color: Colors.white),
  );

  final outlinedStyle = OutlinedButton.styleFrom(
    side: BorderSide(width: 0.5, color: Colors.white.withOpacity(0.6)),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular($styles.corners.circular)),
    backgroundColor: Colors.white.withOpacity(0.05),
    foregroundColor: Colors.white,
    textStyle: const TextStyle(fontWeight: FontWeight.w800, fontSize: 14, color: Colors.white),
  );
}
