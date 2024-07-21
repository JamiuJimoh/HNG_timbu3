import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timbu/src/models/order.dart';
import 'package:timbu/src/utils/app_colors.dart';
import 'package:timbu/src/utils/app_router.dart';
import 'package:timbu/src/views/orders/status_container.dart';

const verticalSpace = 18.0;

class OrderItem extends StatelessWidget {
  const OrderItem({super.key, required this.order});
  final Order order;

  String get count {
    var str = '${order.itemCount} ';
    if (order.itemCount == 1) {
      str += 'item';
      return str;
    }
    str += 'items';
    return str;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed(AppRoute.orderDetails.name, extra: order);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 15.0, vertical: verticalSpace),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: const Color.fromRGBO(42, 42, 42, 0.1)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        order.id,
                        style: GoogleFonts.montserrat(
                          fontSize: 15.0,
                          color: kTabColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // asdf/
                      StatusContainer(status: order.status),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        count,
                        style: GoogleFonts.montserrat(
                          fontSize: 14.0,
                          color: kTabColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        order.subTotal,
                        style: GoogleFonts.montserrat(
                          fontSize: 14.0,
                          color: kTabColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    order.formattedDate,
                    style: GoogleFonts.montserrat(
                      fontSize: 13.0,
                      color: kTabColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20.0),
            Icon(Icons.chevron_right, color: kTabColor.withOpacity(0.5)),
          ],
        ),
      ),
    );
  }
}
