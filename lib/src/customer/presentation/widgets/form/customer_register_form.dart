import 'package:basia_customer_crud/src/customer/constants/message_keys.dart';
import 'package:basia_customer_crud/src/customer/presentation/controller/customers_home_controller.dart';
import 'package:basia_customer_crud/src/customer/presentation/controller/cutomer_form_controller.dart';
import 'package:basia_customer_crud/src/customer/presentation/widgets/atom/customer_date_picker.dart';
import 'package:basia_customer_crud/src/customer/presentation/widgets/atom/customer_form_text_input.dart';
import 'package:basia_customer_crud/src/customer/presentation/widgets/atom/customer_submit_part.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_libs/shared_libs.dart';

class CustomerRegisterForm extends GetView<CustomerFormController> {
  CustomerRegisterForm({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final CustomersHomeController pageController = Get.find();
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text(
            controller.errorMessage.value,
            style: controller.errorMessageStyle.value,
            textAlign: TextAlign.center,
          ),
          const VerticalBlankSpace(),
          CustomerFormTextInput(
            controller: controller.firstNameController,
            validator: controller.fillValidation,
            label: CustomerStrings.customerFirstName.tr,
            action: TextInputAction.next,
            inputType: TextInputType.text,
          ),
          const VerticalBlankSpace(),
          CustomerFormTextInput(
            controller: controller.lastNameController,
            validator: controller.fillValidation,
            label: CustomerStrings.customerLastName.tr,
            action: TextInputAction.next,
            inputType: TextInputType.text,
          ),
          const VerticalBlankSpace(),
          CustomerFormTextInput(
            controller: controller.emailController,
            label: CustomerStrings.customerEmail.tr,
            validator: controller.fillValidation,
            action: TextInputAction.next,
            inputType: TextInputType.number,
          ),
          const VerticalBlankSpace(),
          CustomerFormTextInput(
            controller: controller.phoneNumberController,
            label: CustomerStrings.customerPhoneNumber.tr,
            validator: controller.fillValidation,
            action: TextInputAction.next,
            inputType: TextInputType.number,
          ),
          const VerticalBlankSpace(),
          CustomerFormTextInput(
            controller: controller.bankAccountNumberController,
            label: CustomerStrings.customerBankAccountNumber.tr,
            validator: controller.fillValidation,
            action: TextInputAction.next,
            inputType: TextInputType.number,
          ),
          const VerticalBlankSpace(),
          CustomerBirthDatePicker(
            choosenDate: controller.birth.value,
            pickDate: controller.onDatePicked,
            initialDate: controller.birthDate.value,
          ),
          const VerticalBlankSpace(),
          CustomerSubmitPart(
            submitLabel: CustomerStrings.addCustomer,
            onClear: controller.clearEntries,
            onSubmit: () => controller.onSubmitForm(key: _formKey),
            clearLabel: CustomerStrings.clearEntries,
          ),
        ],
      ),
    );
  }
}
