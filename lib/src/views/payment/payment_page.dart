import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:timbu/src/services/cart_controller.dart';
import 'package:timbu/src/services/order_controller.dart';
import 'package:timbu/src/services/orders_controller.dart';
import 'package:timbu/src/utils/constants.dart';
import 'package:timbu/src/views/cart/custom_cta.dart';
import 'package:timbu/src/views/payment/card_section.dart';
import 'package:timbu/src/views/widgets/custom_text_field.dart';
import 'package:timbu/src/views/widgets/custom_text_input_formatter.dart';
import 'package:timbu/src/views/widgets/texfield_label.dart';

import '../../utils/app_router.dart';

class PaymentPage extends ConsumerStatefulWidget {
  const PaymentPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PaymentPageState();
}

class _PaymentPageState extends ConsumerState<PaymentPage> {
  late TextEditingController _numberController;
  late TextEditingController _dateController;
  late TextEditingController _cvvController;

  @override
  void initState() {
    super.initState();
    _numberController = TextEditingController();
    _dateController = TextEditingController();
    _cvvController = TextEditingController();
  }

  @override
  void dispose() {
    _numberController.dispose();
    _dateController.dispose();
    _cvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final order = ref.watch(orderControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        centerTitle: false,
        leading: GestureDetector(
          onTap: context.pop,
          child: const Icon(Icons.arrow_back, size: 30.0),
        ),
      ),
      body: Padding(
        padding: commonPaddingH,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardSection(
                // cardNumber: _cardNumber,
                cardNumber: _numberController.text,
                cardHolder: 'John Doe',
                // expiryDate: _expDate,
                expiryDate: _dateController.text,
              ),
              const SizedBox(height: 34.0),
              const TexFieldLabel(text: 'Card Number'),
              const SizedBox(height: 12.0),
              SizedBox(
                height: 47.0,
                child: CustomTextField(
                  hintSize: 14.0,
                  borderOpacity: 0.4,
                  controller: _numberController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  hint: '0000 0000 0000 0000',
                  inputFormatters: [
                    CardNumberTextInputFormatter(),
                    LengthLimitingTextInputFormatter(19),
                  ],
                  onChanged: (_) => setState(() {}),
                ),
              ),
              const SizedBox(height: 24.0),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TexFieldLabel(text: 'Expiry Date'),
                        const SizedBox(height: 12.0),
                        SizedBox(
                          height: 47.0,
                          child: CustomTextField(
                            hint: 'MM/YY',
                            hintSize: 14.0,
                            borderOpacity: 0.4,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            controller: _dateController,
                            inputFormatters: [
                              ExpiryDateTextInputFormatter(),
                              LengthLimitingTextInputFormatter(5),
                            ],
                            onChanged: (_) => setState(() {}),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 22.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TexFieldLabel(text: 'CVV'),
                        const SizedBox(height: 12.0),
                        SizedBox(
                          height: 47.0,
                          child: CustomTextField(
                            hint: '123',
                            hintSize: 14.0,
                            borderOpacity: 0.4,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            controller: _cvvController,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(3),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 63.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: SizedBox(
                  height: 44.0,
                  child: CustomCTA(
                    text: 'Make Payment',
                    onTap: () {
                      ref
                          .read(orderControllerProvider.notifier)
                          .copyWithCardNumber(_numberController.text);

                      // ref.read(ordersControllerProvider.notifier).add(order!);
                      ref.read(ordersControllerProvider.notifier).add(order!);
                      ref.read(cartControllerProvider.notifier).clear();

                      context.goNamed(AppRoute.paymentSuccess.name, extra: order);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
