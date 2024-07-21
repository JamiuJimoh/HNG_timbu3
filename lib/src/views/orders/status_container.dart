import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timbu/src/models/order.dart';

import '../../utils/app_colors.dart';

class StatusContainer extends StatelessWidget {
  const StatusContainer({super.key, required this.status});
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        status,
        style: GoogleFonts.montserrat(
          fontSize: 13.0,
          color: kBGColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Color get color {
    if (status == OrderStatus.delivered.text) {
      return Colors.green;
    }
    return Colors.grey;
  }
}
