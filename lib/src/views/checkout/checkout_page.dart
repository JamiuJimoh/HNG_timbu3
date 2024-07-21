import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timbu/src/services/order_controller.dart';
import 'package:timbu/src/utils/app_router.dart';
import 'package:timbu/src/utils/constants.dart';
import 'package:timbu/src/views/cart/custom_cta.dart';
import 'package:timbu/src/views/widgets/custom_text_field.dart';

import '../../utils/app_colors.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/texfield_label.dart';
import 'custom_radio.dart';

class CheckoutPage extends ConsumerStatefulWidget {
  const CheckoutPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends ConsumerState<CheckoutPage> {
  late TextEditingController _deliveryController;
  late TextEditingController _phone1Controller;
  late TextEditingController _phone2Controller;

  @override
  void initState() {
    super.initState();
    _deliveryController = TextEditingController();
    _phone1Controller = TextEditingController();
    _phone2Controller = TextEditingController();
  }

  @override
  void dispose() {
    _deliveryController.dispose();
    _phone1Controller.dispose();
    _phone2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Checkout'),
      body: Padding(
        padding: commonPaddingHV,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select how to receive your package(s)',
                style: GoogleFonts.montserrat(
                  color: kTabColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 21.0),
              const TexFieldLabel(text: 'Pickup*'),
              const SizedBox(height: 8.0),
              CustomRadio(
                addressPicked: (address) {
                  ref
                      .read(orderControllerProvider.notifier)
                      .copyWith((order) => order?.copyWith(pickup: address));
                },
              ),
              const SizedBox(height: 35.0),
              const TexFieldLabel(text: 'Delivery'),
              const SizedBox(height: 12.0),
              SizedBox(
                height: 60.0,
                child: CustomTextField(
                  borderOpacity: 0.5,
                  maxLines: 2,
                  controller: _deliveryController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                ),
              ),
              const SizedBox(height: 35.0),
              const TexFieldLabel(text: 'Contact*'),
              const SizedBox(height: 12.0),
              LayoutBuilder(
                builder: (_, constraints) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 39.0,
                        width: constraints.maxWidth * 0.7,
                        child: CustomTextField(
                          hint: 'Phone nos 1*',
                          borderOpacity: 0.4,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          controller: _phone1Controller,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(11),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      SizedBox(
                        height: 39.0,
                        width: constraints.maxWidth * 0.7,
                        child: CustomTextField(
                          hint: 'Phone nos 2',
                          borderOpacity: 0.4,
                          keyboardType: TextInputType.number,
                          controller: _phone2Controller,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(11),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 62.0),
              SizedBox(
                height: 44.0,
                child: CustomCTA(
                  text: 'Go to Payment',
                  onTap: () {
                    ref.read(orderControllerProvider.notifier).copyWith(
                          (order) => order?.copyWith(
                            delivery: _deliveryController.text,
                            phone1: _phone1Controller.text,
                            phone2: _phone2Controller.text,
                          ),
                        );
                    context.goNamed(AppRoute.payment.name);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
