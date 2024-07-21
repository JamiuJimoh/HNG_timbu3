import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timbu/src/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.maxLines,
    this.keyboardType,
    this.obscureText = false,
    this.hint,
    this.hintSize = 12.0,
    this.borderOpacity = 1.0,
    this.textInputAction,
    this.inputFormatters,
    this.onChanged,
    this.maxLengthEnforcement,
    this.maxLength,
  });
  final TextEditingController? controller;
  final int? maxLines;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String? hint;
  final double borderOpacity;
  final double hintSize;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      cursorColor: kTabColor,
      maxLines: maxLines,
      style: GoogleFonts.montserrat(
        fontSize: 14.0,
        color: kTabColor,
        fontWeight: FontWeight.w500,
      ),
      onChanged: onChanged,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      maxLengthEnforcement: maxLengthEnforcement,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
        hintText: hint,
        hintStyle: GoogleFonts.montserrat(
          fontSize: hintSize,
          color: kTabColor.withOpacity(0.4),
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(9.0)),
          borderSide: BorderSide(color: kTabColor.withOpacity(borderOpacity)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(9.0)),
          borderSide: BorderSide(color: kTabColor.withOpacity(borderOpacity)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(9.0)),
          borderSide: BorderSide(color: kTabColor.withOpacity(borderOpacity)),
        ),
      ),
    );
  }
}
