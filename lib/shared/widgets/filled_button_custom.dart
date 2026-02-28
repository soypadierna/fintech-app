import 'package:flutter/material.dart';

class FilledButtonCustom extends StatelessWidget {
  final void Function()? onPressed;
  final String label;

  const FilledButtonCustom({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
