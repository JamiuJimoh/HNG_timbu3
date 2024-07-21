import 'package:flutter/material.dart';
import 'package:timbu/src/models/order.dart';
import 'package:timbu/src/views/cart/summary_text_tile.dart';

import '../../utils/app_colors.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key, required this.order});
  final Order order;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 17.0),
      decoration: BoxDecoration(
        color: kSurfaceColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   'Details',
          //   style: GoogleFonts.montserrat(
          //     fontSize: 16.0,
          //     fontWeight: FontWeight.w600,
          //     color: kTabColor,
          //   ),
          // ),
          // const SizedBox(height: 25.0),
          SummaryTextTile(
            leftText: 'Subtotal',
            rightText: order.subTotal,
          ),
          const SizedBox(height: 15.0),
          if (order.phone1.isNotEmpty) ...[
            SummaryTextTile(
              leftText: 'Phone1',
              rightText: order.phone1,
            ),
            const SizedBox(height: 15.0),
          ],
          if (order.phone2?.isNotEmpty ?? false) ...[
            SummaryTextTile(
              leftText: 'Phone2',
              rightText: order.phone2!,
            ),
            const SizedBox(height: 15.0),
          ],
          if (order.delivery?.isNotEmpty ?? false) ...[
            SummaryTextTile(
              leftText: 'Delivery',
              rightText: order.delivery!,
            ),
            const SizedBox(height: 15.0),
          ],
          SummaryTextTile(
            leftText: 'Pickup',
            rightText: order.pickup,
          ),
        ],
      ),
    );
  }
}
