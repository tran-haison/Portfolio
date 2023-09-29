import 'package:flutter/material.dart';

class CommonContentLayout extends StatelessWidget {
  const CommonContentLayout({
    Key? key,
    required this.child,
    this.backgroundColor,
  }) : super(key: key);

  final Widget child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(
        vertical: 50,
        horizontal: 30,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1200,
        ),
        child: child,
      ),
    );
  }
}
