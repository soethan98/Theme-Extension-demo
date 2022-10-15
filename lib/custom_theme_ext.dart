import 'package:flutter/material.dart';

class CustomThemeExt extends ThemeExtension<CustomThemeExt> {
  final Color? incrementColor;
  final Color? decrementColor;

  CustomThemeExt({this.incrementColor, this.decrementColor});

  @override
  CustomThemeExt copyWith({
    Color? incColor,
    Color? decColor,
  }) {
    return CustomThemeExt(
        incrementColor: incrementColor ?? incrementColor,
        decrementColor: decColor ?? decrementColor);
  }

  @override
  CustomThemeExt lerp(ThemeExtension<CustomThemeExt>? other, double t) {
    if (other is! CustomThemeExt) {
      return this;
    }
    return CustomThemeExt(
      incrementColor: Color.lerp(incrementColor, other.incrementColor, t),
      decrementColor: Color.lerp(decrementColor, other.decrementColor, t),
    );
  }
}
