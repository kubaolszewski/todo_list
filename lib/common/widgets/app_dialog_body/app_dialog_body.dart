import 'package:flutter/material.dart';

class AppDialogBody extends StatelessWidget {
  const AppDialogBody({
    super.key,
    this.width,
    this.height,
    required this.body,
  });

  final double? width;
  final double? height;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(20.0),
        child: body,
      ),
    );
  }
}
