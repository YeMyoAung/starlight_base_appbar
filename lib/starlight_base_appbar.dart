library base_appbar;

import 'package:flutter/material.dart';

abstract class StarlightBaseAppBar extends StatelessWidget
    with PreferredSizeWidget {
  final bool startFromSafeArea;
  final Color? backgroundColor;
  final bool inheritanceAppBarColor;
  const StarlightBaseAppBar({
    Key? key,
    this.startFromSafeArea = true,
    Size size = const Size.fromHeight(kToolbarHeight),
    this.backgroundColor,
    this.inheritanceAppBarColor = true,
  })  : preferredSize = size,
        super(key: key);

  Widget builder(BuildContext context);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: inheritanceAppBarColor
          ? Theme.of(context).appBarTheme.backgroundColor
          : backgroundColor,
      child: SafeArea(
        top: startFromSafeArea,
        left: false,
        right: false,
        bottom: false,
        child: builder(context),
      ),
    );
  }
}
