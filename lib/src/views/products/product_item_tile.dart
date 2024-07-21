import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timbu/src/services/cart_controller.dart';
import 'package:timbu/src/services/wishlist_controller.dart';
import 'package:timbu/src/utils/app_colors.dart';
import 'package:timbu/src/views/widgets/outline_cta.dart';
import 'package:timbu/src/views/widgets/network_image.dart';

import '../../models/product.dart';
import '../cart/count_adder.dart';

class ProductItemTile extends ConsumerWidget {
  const ProductItemTile({super.key, required this.product});
  final Product product;

  int get ratings => product.ratings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(cartControllerProvider.notifier);
    final _ = ref.watch(wishlistControllerProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 184.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: kSurfaceColor,
              ),
              child: CustomNetworkImage(url: product.photo),
            ),
            Positioned(
              right: 10.0,
              top: 10.0,
              child: GestureDetector(
                onTap: () {
                  ref.read(wishlistControllerProvider.notifier).add(product);
                },
                child: Icon(
                  ref
                          .watch(wishlistControllerProvider.notifier)
                          .inWishlist(product)
                      ? Icons.favorite
                      : Icons.favorite_outline,
                  size: 25.0,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        Text(
          product.name,
          style: GoogleFonts.montserrat(
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
            color: kTabColor,
          ),
          maxLines: 1,
          overflow: TextOverflow.visible,
          // overflow: TextOverflow.visible,
        ),
        const SizedBox(height: 16.0),
        Text(
          product.description,
          style: GoogleFonts.montserrat(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: kTabColor,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            for (var i = 0; i < ratings; i++)
              SvgPicture.asset('assets/star_filled.svg'),
            for (var i = 0; i < 5 - ratings; i++)
              SvgPicture.asset('assets/star_unfilled.svg')
          ],
        ),
        const SizedBox(height: 13.0),
        Text(
          product.sanitizedPrice,
          style: GoogleFonts.montserrat(
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
              color: kPrimaryColor),
          maxLines: 1,
          overflow: TextOverflow.visible,
        ),
        const SizedBox(height: 13.0),
        if (notifier.inCart(product))
          CountAdder(
            canDelete: true,
            product: notifier.byId(product.id),
          ),
        if (!notifier.inCart(product))
          OutlineCTA(
            text: 'Add to Cart',
            onTap: () {
              notifier.add(product);
            },
          ),
      ],
    );
  }
}
