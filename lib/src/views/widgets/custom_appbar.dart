import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    super.key,
    bool super.centerTitle = true,
    bool showLogo = true,
    super.actions,
    required String title,
  }) : super(
          leading: !showLogo
              ? null
              : Container(
                  margin: const EdgeInsets.only(left: commonWidth),
                  child: Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
          leadingWidth: logoWidth + commonWidth,
          title: Text(title),
        );
}
