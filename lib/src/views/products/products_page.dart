import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:timbu/src/utils/app_colors.dart';
import 'package:timbu/src/utils/app_dialogs.dart';
import 'package:timbu/src/utils/app_router.dart';
import 'package:timbu/src/utils/constants.dart';
import 'package:timbu/src/views/error_text.dart';
import 'package:timbu/src/views/products/category_section.dart';
import 'package:timbu/src/views/products/hero_section.dart';
import 'package:timbu/src/views/widgets/custom_appbar.dart';

import '../../services/cart_controller.dart';
import '../../services/products_controller.dart';

class ProductsPage extends ConsumerWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncProducts = ref.watch(productsListProvider);
    final _ = ref.watch(cartControllerProvider);

    ref.listen<AsyncValue>(productsListProvider, (_, state) {
      if (!state.isRefreshing && state.hasError && !state.isLoading) {
        AppDialogs.showAlertDialogOnError(
          context: context,
          error: state.error!,
        );
      }
    });

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Product List',
        actions: [
          GestureDetector(
            onTap: () => context.goNamed(AppRoute.orders.name),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/checkout.svg',
                  colorFilter:
                      const ColorFilter.mode(kTabColor, BlendMode.srcIn),
                ),
                const SizedBox(width: commonWidth),
              ],
            ),
          ),
        ],
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () {
          return ref.refresh(productsListProvider.future);
        },
        child: Padding(
          padding: commonPaddingHV,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HeroSection(),
                const SizedBox(height: 44.0),
                asyncProducts.when(
                  skipError: true,
                  loading: () => const CircularProgressIndicator.adaptive(),
                  error: (e, _) => ErrorText(error: e),
                  data: (products) {
                    if (products.isEmpty) {
                      return const ErrorText(error: 'No products yet');
                    }
                    final categories =
                        ref.watch(productsListProvider.notifier).categories() ??
                            {};
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: categories.keys.length,
                      itemBuilder: (_, i) {
                        // Products gotten from the api are further categorised in the
                        // app. The UI consumes a Map of category name as key and a list of
                        // products with that categories as value. Check out the
                        // ProductsController where the magic happens
                        final key = categories.keys.toList()[i];
                        final value = categories[key] ?? [];
                        return Column(
                          children: [
                            CategorySection(title: key, products: value),
                            if (i < categories.keys.length - 1)
                              const SizedBox(height: 67.0),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
