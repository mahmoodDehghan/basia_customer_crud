import 'package:basia_customer_crud/src/customer/constants/message_keys.dart';
import 'package:basia_customer_crud/src/customer/presentation/widgets/atom/cutomer_form_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';

class CustomerBirthDatePicker extends StatelessWidget {
  const CustomerBirthDatePicker({
    super.key,
    required this.choosenDate,
    required this.pickDate,
    required this.initialDate,
  });

  final String choosenDate;
  final dynamic Function(DateTime) pickDate;
  final DateTime initialDate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: CustomerFormLabel(
              label: CustomerStrings.customerBirthDate.tr,
            )),
        Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: ElevatedButton(
                        onPressed: () {
                          DatePicker.showDatePicker(
                            context,
                            minTime: DateTime(1900, 01, 01),
                            maxTime: DateTime(2010, 01, 01),
                            onConfirm: pickDate,
                            currentTime: initialDate,
                          );
                        },
                        child: Text(CustomerStrings.customerPickBDate.tr))),
                Expanded(
                    flex: 1,
                    child: TextFormField(
                      enabled: false,
                      initialValue: choosenDate,
                    )),
              ],
            )),
      ],
    );
  }
}
