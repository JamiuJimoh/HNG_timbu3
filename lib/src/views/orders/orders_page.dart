import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timbu/src/utils/constants.dart';
import 'package:timbu/src/views/error_text.dart';
import 'package:timbu/src/views/orders/order_item.dart';

import '../../services/orders_controller.dart';
import '../../utils/app_colors.dart';

class OrdersPage extends ConsumerWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ordersAsync = ref.watch(ordersControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Order History'),
        centerTitle: false,
        leading: GestureDetector(
          onTap: context.pop,
          child: const Icon(Icons.arrow_back, size: 30.0),
        ),
      ),
      body: ordersAsync.when(
        loading: () =>
            const Center(child: CircularProgressIndicator.adaptive()),
        error: (e, __) => ErrorText(error: e),
        data: (orders) {
          if (orders.isEmpty) {
            return Center(
              child: Text(
                'No orders yet',
                style: GoogleFonts.montserrat(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  color: kTabColor,
                ),
              ),
            );
          }
          return Padding(
            padding: commonPaddingHV,
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (_, i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OrderItem(order: orders[i]),
                    const SizedBox(height: 20.0),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
