import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timbu/src/models/custom_api_error.dart';
import 'package:timbu/src/utils/constants.dart';
import 'package:timbu/src/views/cart/delete_options_content.dart';

import 'app_colors.dart';

class AppDialogs {
  static Future<T?> showAlertDialog<T>(BuildContext context,
      {required Widget child,
      bool isDismissible = true,
      Color? backgroundColor}) async {
    return showDialog<T>(
      context: context,
      barrierDismissible: isDismissible,
      builder: (innerContext) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Dialog(
              insetPadding: commonPaddingHV,
              backgroundColor: Colors.transparent,
              child: Container(
                constraints: const BoxConstraints(
                  minHeight: 50.0,
                  minWidth: double.infinity,
                ),
                decoration: BoxDecoration(
                  color: kBGColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [child],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  static Future<bool?> showFailureAlertDialog(
    BuildContext context, {
    required String title,
    required String description,
  }) async {
    return showAlertDialog(
      context,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline_rounded,
              size: 90.0,
              color: Colors.red,
            ),
            const SizedBox(height: 20.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 18.0,
                color: kTabColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 15.0,
                  color: kTabColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }

  static Future<void> showAlertDialogOnError({
    required BuildContext context,
    required Object error,
  }) async {
    if (error is CustomApiError) {
      await showFailureAlertDialog(
        context,
        title: 'Error',
        description: error.message,
      );
    } else if (error is SocketException) {
      await showFailureAlertDialog(
        context,
        title: 'Network Failure',
        description:
            'Check your internet connection and pull page to refresh to try again.',
      );
    } else {
      await showFailureAlertDialog(
        context,
        title: 'Error',
        description: 'An error occurred!',
      );
    }
  }

  static Future<void> showDeleteOptionDialog({
    required BuildContext context,
    required VoidCallback option1,
    required VoidCallback option2,
  }) {
    return showAlertDialog(
      context,
      child: DeleteOptionsContent(
        option1: option1,
        option2: option2,
      ),
    );
  }
}
