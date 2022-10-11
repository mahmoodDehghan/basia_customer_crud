import 'package:basia_customer_crud/src/customer/presentation/widgets/atom/cutomer_form_label.dart';
import 'package:flutter/material.dart';

class CustomerFormTextInput extends StatelessWidget {
  const CustomerFormTextInput({
    super.key,
    required this.controller,
    required this.label,
    required this.action,
    required this.inputType,
    this.validator,
    this.onChanged,
    this.onEditingComplete,
    this.onFieldSubmitted,
  });

  final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputAction action;
  final TextInputType inputType;
  final void Function(String?)? onChanged;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomerFormLabel(
            label: label,
          ),
        ),
        Expanded(
          flex: 3,
          child: TextFormField(
            controller: controller,
            validator: validator,
            keyboardType: inputType,
            textInputAction: action,
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            onFieldSubmitted: onFieldSubmitted,
          ),
        )
      ],
    );
  }
}
