import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors.dart';
import '../../utils/constants.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Image.asset('assets/hero.png'),
          Padding(
            padding: commonPaddingHV,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Premium Sound,\nPremium Savings',
                  style: GoogleFonts.montserrat(
                    fontSize: 20.0,
                    color: kBGColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Limited offer, hope on and get yours now',
                  style: GoogleFonts.montserrat(
                    fontSize: 12.0,
                    color: kBGColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
