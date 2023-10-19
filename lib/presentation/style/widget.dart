//buttons

import 'package:chat_craft/presentation/style/colors.dart';
import 'package:flutter/material.dart';

import 'text_style.dart';

Widget primaryButton(String text, VoidCallback onPressed,
        {Color? foregroundColor,
        Color? backgroundColor,
        Color? disabledForegroundColor,
        Color? disabledBackgroundColor,
        Color? shadowColor,
        Color? surfaceTintColor,
        double? elevation,
        TextStyle? textStyle,
        EdgeInsetsGeometry? padding,
        Size? minimumSize,
        Size? fixedSize,
        Size? maximumSize,
        BorderSide? side,
        OutlinedBorder? shape,
        MouseCursor? enabledMouseCursor,
        MouseCursor? disabledMouseCursor,
        VisualDensity? visualDensity,
        MaterialTapTargetSize? tapTargetSize,
        Duration? animationDuration,
        bool? enableFeedback,
        AlignmentGeometry? alignment,
        InteractiveInkFeatureFactory? splashFactory}) =>
    ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: secondaryBGColor,
            alignment: Alignment.center,
            disabledBackgroundColor: primaryDarkestColor,
            disabledForegroundColor: secondaryBGColor,
            fixedSize: fixedSize,
            elevation: 0),
        child: Text(
          text,
          style: subheading1.copyWith(color: secondaryBGColor),
        ));

Widget primaryOutlinedButton(String text, VoidCallback onPressed) =>
    OutlinedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: subheading2.copyWith(color: primaryColor),
      ),
      style: OutlinedButton.styleFrom(
          side: BorderSide(color: primaryColor, width: 2)),
    );

Widget primaryTextButton(String text, VoidCallback onPressed) => TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: subheading2.copyWith(color: primaryColor),
      ),
      style: OutlinedButton.styleFrom(
          side: BorderSide(color: primaryColor, width: 2)),
    );
