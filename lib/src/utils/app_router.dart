import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:timbu/src/views/cart/cart_page.dart';
import 'package:timbu/src/views/checkout/checkout_page.dart';
import 'package:timbu/src/views/orders/order_details_page.dart';
import 'package:timbu/src/views/payment/payment_page.dart';
import 'package:timbu/src/views/payment/payment_success_page.dart';
import 'package:timbu/src/views/products/products_page.dart';
import 'package:timbu/src/views/tab/tab_page.dart';
import 'package:timbu/src/views/wishlist/wishlist_page.dart';

import '../models/order.dart';
import '../views/orders/orders_page.dart';

enum AppRoute {
  tab('/tab'),
  products('/products'),
  orders('/orders'),
  orderDetails('/order-details'),
  cart('/cart'),
  payment('/payment'),
  wishlist('/wishlist'),
  paymentSuccess('/payment-success'),
  checkout('/checkout');

  const AppRoute(this.path);
  final String path;
}

extension AppRouteExtension on AppRoute {
// removes the '/' from each "paths"
// this is used for nested routing as the
// nested routes don't accept the '/'
  String get relativePath => path.split('/').last;
}

// keys for the root navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _productsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'tab');
final _cartNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'cart');
final _wishlistNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'wishlist');

// manages the app routes
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoute.products.path,
    navigatorKey: _rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (_, __, navigationShell) {
          return TabPage(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _productsNavigatorKey,
            routes: [
              GoRoute(
                path: AppRoute.products.path,
                name: AppRoute.products.name,
                builder: (_, __) {
                  return const ProductsPage();
                },
                routes: [
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: AppRoute.orders.relativePath,
                    name: AppRoute.orders.name,
                    builder: (_, __) {
                      return const OrdersPage();
                    },
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: AppRoute.orderDetails.relativePath,
                        name: AppRoute.orderDetails.name,
                        builder: (_, state) {
                          final order = state.extra as Order;
                          return OrderDetailsPage(order: order);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _cartNavigatorKey,
            routes: [
              GoRoute(
                path: AppRoute.cart.path,
                name: AppRoute.cart.name,
                builder: (_, __) {
                  return const CartPage();
                },
                routes: [
                  GoRoute(
                    parentNavigatorKey: _cartNavigatorKey,
                    path: AppRoute.checkout.relativePath,
                    name: AppRoute.checkout.name,
                    builder: (_, state) {
                      return const CheckoutPage();
                    },
                    routes: [
                      GoRoute(
                        path: AppRoute.payment.relativePath,
                        name: AppRoute.payment.name,
                        builder: (_, state) {
                          return const PaymentPage();
                        },
                      ),
                    ],
                  ),
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: AppRoute.paymentSuccess.relativePath,
                    name: AppRoute.paymentSuccess.name,
                    builder: (_, state) {
                      final order = state.extra as Order;
                      return PaymentSuccessPage(order: order);
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _wishlistNavigatorKey,
            routes: [
              GoRoute(
                path: AppRoute.wishlist.path,
                name: AppRoute.wishlist.name,
                builder: (_, __) {
                  return const WishlistPage();
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
});
