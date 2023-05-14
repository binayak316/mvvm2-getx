import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final void Function(String)? onFieldSubmitted;
  const CustomTextFormField({
    this.controller,
    this.focusNode,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
    required this.hintText,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      obscureText: false,
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
