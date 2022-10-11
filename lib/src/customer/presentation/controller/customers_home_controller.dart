import 'package:basia_customer_crud/src/customer/constants/message_keys.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CustomersHomeController extends GetxController {
  CustomersHomeController()
      : firstNameController = TextEditingController(),
        lastNameController = TextEditingController(),
        emailController = TextEditingController(),
        phoneNumberController = TextEditingController(),
        bankAccountNumberController = TextEditingController();

  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController phoneNumberController;
  final TextEditingController bankAccountNumberController;
  final Rx<DateTime> birthDate = DateTime.utc(2010).obs;
  final RxBool dateChoosen = false.obs;
  final RxString errorMessage = CustomerStrings.initMsg.obs;
  final Rx<TextStyle> errorMessageStyle =
      Theme.of(Get.context!).textTheme.titleSmall!.obs;
  // final RxInt year = 0.obs;
  // final RxInt month = 0.obs;
  // final RxInt day = 0.obs;
  final RxString birth = '1/1/2010'.obs;

  String? fillValidation(String? entry) {
    if (entry == null || entry.isEmpty) {
      return CustomerStrings.emptyError.tr;
    }
    return null;
  }

  dynamic onDatePicked(DateTime date) {
    birthDate.value = date;
    birth.value = DateFormat.yMd().format(date);
    dateChoosen.value = true;
  }

  void onParsDate(String date) {
    birth.value = date;
    birthDate.value = DateFormat.yMd().parse(date);
    dateChoosen.value = true;
  }

  void clearEntries() {
    firstNameController.clear();
    lastNameController.clear();
    dateChoosen.value = false;
    birthDate.value = DateTime.utc(2010);
    birth.value = '1/1/2010';
    phoneNumberController.clear();
    bankAccountNumberController.clear();
    emailController.clear();
    errorMessage.value = CustomerStrings.initMsg;
    errorMessageStyle.value = Theme.of(Get.context!).textTheme.titleSmall!;
  }

  void onSubmitForm({required GlobalKey<FormState> key}) {
    if (key.currentState!.validate()) {
    } else {
      errorMessage.value = CustomerStrings.wrongInputFields;
      errorMessageStyle.value = Theme.of(Get.context!)
          .textTheme
          .titleSmall!
          .copyWith(color: Colors.redAccent);
    }
  }
}
