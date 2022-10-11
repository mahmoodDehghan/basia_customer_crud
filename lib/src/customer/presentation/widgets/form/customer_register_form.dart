import 'package:basia_customer_crud/src/customer/constants/message_keys.dart';
import 'package:basia_customer_crud/src/customer/presentation/controller/customers_home_controller.dart';
import 'package:basia_customer_crud/src/customer/presentation/widgets/atom/customer_date_picker.dart';
import 'package:basia_customer_crud/src/customer/presentation/widgets/atom/customer_form_text_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_libs/shared_libs.dart';

class CustomerRegisterForm extends StatelessWidget {
  CustomerRegisterForm({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final CustomersHomeController pageController = Get.find();
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          CustomerFormTextInput(
            controller: pageController.firstNameController,
            validator: pageController.fillValidation,
            label: CustomerStrings.customerFirstName.tr,
            action: TextInputAction.next,
            inputType: TextInputType.text,
          ),
          const VerticalBlankSpace(),
          CustomerFormTextInput(
            controller: pageController.lastNameController,
            validator: pageController.fillValidation,
            label: CustomerStrings.customerLastName.tr,
            action: TextInputAction.next,
            inputType: TextInputType.text,
          ),
          const VerticalBlankSpace(),
          CustomerFormTextInput(
            controller: pageController.emailController,
            label: CustomerStrings.customerEmail.tr,
            validator: pageController.fillValidation,
            action: TextInputAction.next,
            inputType: TextInputType.number,
          ),
          const VerticalBlankSpace(),
          CustomerFormTextInput(
            controller: pageController.phoneNumberController,
            label: CustomerStrings.customerPhoneNumber.tr,
            validator: pageController.fillValidation,
            action: TextInputAction.next,
            inputType: TextInputType.number,
          ),
          const VerticalBlankSpace(),
          CustomerFormTextInput(
            controller: pageController.bankAccountNumberController,
            label: CustomerStrings.customerBankAccountNumber.tr,
            validator: pageController.fillValidation,
            action: TextInputAction.next,
            inputType: TextInputType.number,
          ),
          const VerticalBlankSpace(),
          CustomerBirthDatePicker(
            choosenDate: pageController.birth.value,
            pickDate: pageController.onDatePicked,
            initialDate: pageController.birthDate.value,
          )
        ],
      ),
    );
  }
}
