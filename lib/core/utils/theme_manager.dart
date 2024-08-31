
import 'package:fimisraj/core/helper/convert_to_material_color.dart';
import 'package:fimisraj/core/utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_manager.dart';



class ThemeManager {
  static ThemeData myTheme = ThemeData(

          fontFamily:GoogleFonts.poppins().fontFamily,
          primarySwatch:
              Color(ColorManager.primary.value).toMaterialColor())
      .copyWith(
    primaryColor: ColorManager.primary,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
           textStyle:  TextStyle(color: ColorManager.white)
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: ColorManager.primary, // لون خلفية الزر
          minimumSize: const Size(double.infinity, AppSize.s50), // لون نص الزر
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:ColorManager.grayLight), // لون الحدود
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.grayLight), // لون الحدود عند التركيز
        ),
      ),
    primaryIconTheme: const IconThemeData(color: ColorManager.primary),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            iconColor: WidgetStateProperty.all(ColorManager.primary))),
    appBarTheme: const AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(color: ColorManager.primary),
        actionsIconTheme: IconThemeData(color: ColorManager.primary),
        backgroundColor: ColorManager.appBarColor,
        centerTitle: true),
    drawerTheme: const DrawerThemeData(
      backgroundColor: ColorManager.appBarColor,
    ),
    scaffoldBackgroundColor: ColorManager.scaffoldBackgroundLight
  );
}
