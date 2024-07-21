import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timbu/src/utils/constants.dart';
import 'package:timbu/src/views/orders/details_section.dart';
import 'package:timbu/src/views/orders/products_section.dart';

import '../../models/order.dart';
import '../../utils/app_colors.dart';
import 'status_container.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key, required this.order});
  final Order order;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
        centerTitle: false,
        leading: GestureDetector(
          onTap: context.pop,
          child: const Icon(Icons.arrow_back, size: 30.0),
        ),
      ),
      body: Padding(
        padding: commonPaddingHV,
        child: SingleChildScrollView(
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
              Text(
                order.formattedDate,
                style: GoogleFonts.montserrat(
                  fontSize: 13.0,
                  color: kTabColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 25.0),
              Text(
                'Details',
                style: GoogleFonts.montserrat(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: kTabColor,
                ),
              ),
              const SizedBox(height: 10.0),
              DetailsSection(order: order),
              const SizedBox(height: 25.0),
              Text(
                'Products',
                style: GoogleFonts.montserrat(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: kTabColor,
                ),
              ),
              const SizedBox(height: 10.0),
              ProductsSection(products: order.products),
            ],
          ),
        ),
      ),
    );
  }
}
