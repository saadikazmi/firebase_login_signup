import 'package:controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputTextField extends StatelessWidget {
const  InputTextField({Key? key, required this.myicons, this.controller, this.label, this.toHide = false, this.validator,}) : super(key: key);

  final TextEditingController? controller;
  final IconData myicons;
  final String? label;
  final bool toHide;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      maxLength: 70,
      obscureText: toHide,
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade100,
        prefixIcon: Icon(myicons),
        labelText: label,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,

          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,

          ),
        ),      ),
      );

  }
}
