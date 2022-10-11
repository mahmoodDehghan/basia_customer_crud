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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 1,
          child: ElevatedButton(
            key: const ValueKey('customerRegister'),
            onPressed: onSubmit,
            style: ElevatedButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Colors.white,
                  ),
            ),
            child: Text(
              submitLabel,
            ),
          ),
        ),
        const HorizontalBlankSpace(
          width: 50,
        ),
        Expanded(
          flex: 1,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Colors.redAccent),
            ),
            onPressed: onClear,
            child: Text(
              clearLabel,
            ),
          ),
        ),
      ],
    );
  }
}
