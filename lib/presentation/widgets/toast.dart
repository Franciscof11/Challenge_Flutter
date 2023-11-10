import 'package:another_flushbar/flushbar.dart';
import 'package:challenge_flutter/config/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

showToast({required context, required String message, required Color color}) {
  Flushbar(
    messageText: Text(
      message,
      style: GoogleFonts.rubik(
        color: mainBlue,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
    icon: Icon(
      Icons.info_outline,
      size: 28.0,
      color: color,
    ),
    margin: const EdgeInsets.only(top: 50, right: 100),
    duration: const Duration(seconds: 3),
    leftBarIndicatorColor: mainBlue,
    flushbarPosition: FlushbarPosition.TOP,
    borderRadius: const BorderRadius.only(
      topRight: Radius.circular(12),
      bottomRight: Radius.circular(12),
    ),
    forwardAnimationCurve: Curves.decelerate,
    animationDuration: const Duration(seconds: 2),
    backgroundColor: Colors.white,
  ).show(context);
}
