import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timbu/src/services/wishlist_controller.dart';
import 'package:timbu/src/utils/constants.dart';
import 'package:timbu/src/views/wishlist/wishlist_tile.dart';
import '../../utils/app_colors.dart';
import '../widgets/custom_appbar.dart';

class WishlistPage extends ConsumerWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wishlist = ref.watch(wishlistControllerProvider);

    return Scaffold(
      appBar: CustomAppBar(title: 'Wishlist'),
      body: Padding(
        padding: commonPaddingHV,
        child: wishlist.isEmpty
            ? Center(
                child: Text(
                  'No items in wishlist',
                  style: GoogleFonts.montserrat(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    color: kTabColor,
                  ),
                ),
              )
            : ListView.builder(
                itemCount: wishlist.length,
                itemBuilder: (_, i) {
                  return Column(
                    children: [
                      WishlistTile(
                        product: wishlist[i],
                        onTap: () {},
                      ),
                      const SizedBox(height: 21.0),
                    ],
                  );
                },
              ),
      ),
    );
  }
}
