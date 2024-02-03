import 'package:e_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_store/utils/theme/custom_themes/outlined_botton_theme.dart';
import 'package:e_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:e_store/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class EAppTheme {
  EAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: ETextTheme.lightTextTheme,
      chipTheme: EChipTheme.lightChipTheme,
      appBarTheme: EAppBarTheme.lightAppBarTheme,
      checkboxTheme: ECheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: EBottomSheetTheme.lightBottomSheetTheme,
      outlinedButtonTheme: EOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: ETextFormFieldTheme.lightInputDecorationTheme,
      elevatedButtonTheme: EElevatedButtonTheme.lightElevatedButtonTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: ETextTheme.darkTextTheme,
      chipTheme: EChipTheme.darkChipTheme,
      appBarTheme: EAppBarTheme.darkAppBarTheme,
      checkboxTheme: ECheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: EBottomSheetTheme.darkBottomSheetTheme,
      outlinedButtonTheme: EOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: ETextFormFieldTheme.darkInputDecorationTheme,
      elevatedButtonTheme: EElevatedButtonTheme.darkElevatedButtonTheme);
}
