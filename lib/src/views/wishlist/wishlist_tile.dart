import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timbu/src/services/wishlist_controller.dart';
import 'package:timbu/src/views/widgets/outline_cta.dart';

import '../../models/product.dart';
import '../../utils/app_colors.dart';
import '../cart/custom_cta.dart';
import '../widgets/network_image.dart';

class WishlistTile extends ConsumerWidget {
  const WishlistTile({
    super.key,
    required this.product,
    required this.onTap,
  });
  final Product product;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: const Color.fromRGBO(42, 42, 42, 0.1)),
      ),
      child: Column(
        children: [
          Row(
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
                ],
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 35.0,
                  child: OutlineCTA(
                    text: 'Remove',
                    contentPadding: EdgeInsets.zero,
                    onTap: () {
                      ref
                          .read(wishlistControllerProvider.notifier)
                          .remove(product.id);
                    },
                  ),
                ),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: SizedBox(
                  height: 35.0,
                  child: CustomCTA(
                    text: 'Move to Cart',
                    onTap: () {
                      ref
                          .read(wishlistControllerProvider.notifier)
                          .addToCart(product);
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
