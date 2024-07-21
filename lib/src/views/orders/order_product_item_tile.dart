import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/product.dart';
import '../../utils/app_colors.dart';
import '../widgets/network_image.dart';

class OrderProductItemTile extends StatelessWidget {
  const OrderProductItemTile({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: const Color.fromRGBO(42, 42, 42, 0.1)),
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70.0,
            width: 70.0,
            child: CustomNetworkImage(url: product.photo),
          ),
          const SizedBox(width: 23.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.0,
                  color: kTabColor,
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 8.0),
              Text(
                product.description,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 11.0,
                  color: kTabColor,
                ),
                maxLines: 2,
              ),

              const SizedBox(height: 8.0),
              Text(
                'Quantity: ${product.quantity}',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 11.0,
                  color: kTabColor,
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 8.0),
              Text(
                'Price: ${product.onePrice}',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 11.0,
                  color: kTabColor,
                ),
                maxLines: 2,
              ),


              const SizedBox(height: 8.0),
              Text(
                'Total: ${product.sanitizedPrice}',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 11.0,
                  color: kTabColor,
                ),
                maxLines: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
