import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timbu/src/utils/app_colors.dart';

class OutlineCTA extends StatelessWidget {
  const OutlineCTA({
    super.key,
    required this.text,
    required this.onTap,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 11.0, horizontal: 10.0),
  });
  final String text;
  final VoidCallback onTap;
  final EdgeInsets contentPadding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: contentPadding,
        decoration: BoxDecoration(
          border: Border.all(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.montserrat(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: kTabColor,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
