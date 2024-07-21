import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timbu/src/utils/app_colors.dart';

class CardSection extends StatelessWidget {
  const CardSection({
    super.key,
    required this.cardNumber,
    required this.cardHolder,
    required this.expiryDate,
  });
  final String cardNumber;
  final String cardHolder;
  final String expiryDate;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/card.svg'),
        Positioned(
          bottom: 31.0,
          left: 21.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardNumber,
                style: GoogleFonts.poppins(
                  color: kBGColor,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  _TextTile(title: 'Card holder name', value: cardHolder),
                  const SizedBox(width: 46.0),
                  _TextTile(title: 'Expiry date', value: expiryDate),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TextTile extends StatelessWidget {
  const _TextTile({required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            color: kBGColor,
            fontSize: 11.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 2.0),
        Text(
          value,
          style: GoogleFonts.poppins(
            color: kBGColor,
            fontSize: 11.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
