import 'package:basia_customer_crud/src/customer/constants/message_keys.dart';
import 'package:basia_customer_crud/src/customer/presentation/controller/cutomer_form_controller.dart';
import 'package:basia_customer_crud/src/customer/presentation/widgets/atom/customer_date_picker.dart';
import 'package:basia_customer_crud/src/customer/presentation/widgets/atom/customer_form_text_input.dart';
import 'package:basia_customer_crud/src/customer/presentation/widgets/atom/customer_submit_part.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_libs/shared_libs.dart';

class CustomerRegisterForm extends StatelessWidget {
  CustomerRegisterForm({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    const verticalSpace = 35.0;
    final CustomerFormController pageController =
        Get.put(CustomerFormController());
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text(
            pageController.errorMessage.value,
            style: pageController.errorMessageStyle.value,
            textAlign: TextAlign.center,
          ),
          const VerticalBlankSpace(
            height: verticalSpace,
          ),
          CustomerFormTextInput(
            controller: pageController.firstNameController,
            validator: pageController.fillValidation,
            label: CustomerStrings.customerFirstName.tr,
            action: TextInputAction.next,
            inputType: TextInputType.text,
          ),
          const VerticalBlankSpace(
            height: verticalSpace,
          ),
          CustomerFormTextInput(
            controller: pageController.lastNameController,
            validator: pageController.fillValidation,
            label: CustomerStrings.customerLastName.tr,
            action: TextInputAction.next,
            inputType: TextInputType.text,
          ),
          const VerticalBlankSpace(
            height: verticalSpace,
          ),
          CustomerFormTextInput(
            controller: pageController.emailController,
            label: CustomerStrings.customerEmail.tr,
            validator: pageController.fillValidation,
            action: TextInputAction.next,
            inputType: TextInputType.number,
          ),
          const VerticalBlankSpace(
            height: verticalSpace,
          ),
          CustomerFormTextInput(
            controller: pageController.phoneNumberController,
            label: CustomerStrings.customerPhoneNumber.tr,
            validator: pageController.fillValidation,
            action: TextInputAction.next,
            inputType: TextInputType.number,
          ),
          const VerticalBlankSpace(
            height: verticalSpace,
          ),
          CustomerFormTextInput(
            controller: pageController.bankAccountNumberController,
            label: CustomerStrings.customerBankAccountNumber.tr,
            validator: pageController.fillValidation,
            action: TextInputAction.next,
            inputType: TextInputType.number,
          ),
          const VerticalBlankSpace(
            height: verticalSpace,
          ),
          CustomerBirthDatePicker(
            choosenDate: pageController.birth.value,
            pickDate: pageController.onDatePicked,
            initialDate: pageController.birthDate.value,
          ),
          const VerticalBlankSpace(
            height: 2 * verticalSpace,
          ),
          CustomerSubmitPart(
            submitLabel: CustomerStrings.addCustomer,
            onClear: pageController.clearEntries,
            onSubmit: () => pageController.onSubmitForm(key: _formKey),
            clearLabel: CustomerStrings.clearEntries,
          ),
          const VerticalBlankSpace(
            height: 2 * verticalSpace,
          ),
        ],
      ),
    );
  }
}
