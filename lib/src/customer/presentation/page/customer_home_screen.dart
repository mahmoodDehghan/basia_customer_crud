import 'package:basia_customer_crud/src/customer/constants/message_keys.dart';
import 'package:basia_customer_crud/src/customer/presentation/widgets/organizer/customer_home_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/customers_home_controller.dart';

class CustomersHomePage extends GetView<CustomersHomeController> {
  static const String routeName = '/';
  const CustomersHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(CustomersHomeController());
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(CustomerStrings.customerHomeTitle.tr),
        ),
      ),
      body: const CustomerHomeContainer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.list_alt),
      ),
    );
  }
}
