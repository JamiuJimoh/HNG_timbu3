import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timbu/src/utils/constants.dart';
import 'package:timbu/src/views/cart/custom_cta.dart';
import 'package:timbu/src/views/widgets/outline_cta.dart';

import '../../utils/app_colors.dart';

class DeleteOptionsContent extends StatelessWidget {
  const DeleteOptionsContent(
      {super.key, required this.option1, required this.option2});
  final VoidCallback option1;
  final VoidCallback option2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: commonPaddingHV,
      child: Column(
        children: [
          const SizedBox(height: 15.0),
          Text(
            'Remove from cart',
            style: GoogleFonts.montserrat(
              fontSize: 18.0,
              color: kTabColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15.0),
          Text(
            'Do you really want to remove this item?',
            style: GoogleFonts.montserrat(
              fontSize: 15.0,
              color: kTabColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 25.0),
          SizedBox(
            height: 44.0,
            width: double.infinity,
            child: OutlineCTA(
              text: 'Remove item',
              onTap: (){
                option1();
                Navigator.pop(context);
              },
            ),
          ),
          const SizedBox(height: 15.0),
          SizedBox(
            height: 44.0,
            child: CustomCTA(
              text: 'Save for later',
              onTap: (){
                option2();
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
