import 'package:flutter/material.dart';

class SupplierFormControllers {
  final TextEditingController name;
  final TextEditingController phone;
  final TextEditingController address;
  final GlobalKey<FormState> formKey;

  SupplierFormControllers()
      : name = TextEditingController(),
        phone = TextEditingController(),
        address = TextEditingController(),
        formKey = GlobalKey<FormState>();

  void dispose() {
    name.dispose();
    phone.dispose();
    address.dispose();
  }

  void clear() {
    name.clear();
    phone.clear();
    address.clear();
  }
}
