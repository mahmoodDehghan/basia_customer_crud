import 'package:basia_customer_crud/src/customer/presentation/widgets/form/customer_register_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerHomeContainer extends GetView<CustomerRegisterForm> {
  const CustomerHomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(controller);
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 25.0,
                ),
                child: CustomerRegisterForm(),
              )
            ],
          ),
        )
      ],
    );
  }
}
