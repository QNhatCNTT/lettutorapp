import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String iconUrl;
  final String hint;
  final bool obsureText;
  final TextEditingController? controller;
  final String? errorText;
  final void Function(String)? onChanged;
  const CustomInput({
    Key? key,
    this.iconUrl = '',
    this.hint = '',
    this.obsureText = false,
    this.controller,
    this.errorText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(18),
      child: TextField(
        obscureText: obsureText,
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hint,
          errorText: errorText,
          prefixIcon: Container(
            padding: const EdgeInsets.all(8),
            width: 20,
            child: Image.asset(iconUrl),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          hintStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
