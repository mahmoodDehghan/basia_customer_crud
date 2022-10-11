import 'package:basia_customer_crud/src/customer/constants/message_keys.dart';
import 'package:get/get.dart';

class CustomerLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          CustomerStrings.customerHomeTitle: "Customer CRUD",
          CustomerStrings.customerFirstName: "First Name",
          CustomerStrings.customerLastName: "Last Name",
          CustomerStrings.customerPhoneNumber: "Phone Number",
          CustomerStrings.customerBankAccountNumber: "Bank Account Number",
          CustomerStrings.customerEmail: "Email",
          CustomerStrings.customerBirthDate: "BitrthDate",
          CustomerStrings.customerBirthDay: "Day",
          CustomerStrings.customerBirthMonth: "Month",
          CustomerStrings.customerBirthYear: "Year",
          CustomerStrings.emptyError: "Field is required!",
          CustomerStrings.customerPickBDate: "Pick Date",
        },
        'fa_IR': {
          CustomerStrings.customerHomeTitle: "پنل تست مشتری",
          CustomerStrings.customerFirstName: "نام",
          CustomerStrings.customerLastName: "نام خانوادگی",
          CustomerStrings.customerPhoneNumber: "شماره همراه",
          CustomerStrings.customerBankAccountNumber: "شماره حساب",
          CustomerStrings.customerEmail: "ایمیل",
          CustomerStrings.customerBirthDate: "زادروز",
          CustomerStrings.customerBirthDay: "روز",
          CustomerStrings.customerBirthMonth: "ماه",
          CustomerStrings.customerBirthYear: "سال",
          CustomerStrings.emptyError: "فیلد اجباری!",
          CustomerStrings.customerPickBDate: "انتخاب تاریخ",
        }
      };
}
