import 'package:flutter/material.dart';
import 'package:shared_libs/shared_libs.dart';

class CustomerSubmitPart extends StatelessWidget {
  const CustomerSubmitPart({
    super.key,
    required this.onSubmit,
    required this.onClear,
    required this.clearLabel,
    required this.submitLabel,
  });

  final void Function() onSubmit;
  final void Function() onClear;
  final String submitLabel;
  final String clearLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: ElevatedButton(
            onPressed: onSubmit,
            child: Text(
              submitLabel,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ),
        const HorizontalBlankSpace(
          width: 30,
        ),
        Expanded(
          flex: 1,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.redAccent,
            ),
            onPressed: onClear,
            child: Text(
              clearLabel,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ),
      ],
    );
  }
}
