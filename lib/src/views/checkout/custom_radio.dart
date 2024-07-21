import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors.dart';
import '../../utils/constants.dart';

class CustomRadio extends StatefulWidget {
  const CustomRadio({super.key, required this.addressPicked});
  final ValueChanged<String> addressPicked;

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  var _pickup = Pickup.one;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<Pickup>(
          value: Pickup.one,
          dense: true,
          contentPadding: EdgeInsets.zero,
          groupValue: _pickup,
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          onChanged: (pickup) {
            if (pickup == null) return;
            setState(() {
              _pickup = pickup;
            });
            widget.addressPicked(address1);
          },
          title: Text(
            address1,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
              color: kTabColor.withOpacity(0.67),
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(height: 12.0),
        RadioListTile<Pickup>(
          value: Pickup.two,
          contentPadding: EdgeInsets.zero,
          dense: true,
          groupValue: _pickup,
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          onChanged: (pickup) {
            if (pickup == null) return;
            setState(() {
              _pickup = pickup;
            });
            widget.addressPicked(address2);
          },
          title: Text(
            address2,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
              color: kTabColor.withOpacity(0.67),
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}

enum Pickup { one, two }
