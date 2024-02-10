import 'package:flutter/material.dart';
import '../utils/color.dart';

class ReusableTextForm extends StatefulWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Color filledColor;
  final String? hintText;
  final bool? obscureText;
  final bool? enabled;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const ReusableTextForm({
    Key? key,
    this.validator,
    this.controller,
    this.keyboardType,
    this.hintText,
    this.suffixIcon,
    this.obscureText = false,
    this.enabled = true,
    this.prefixIcon,
    this.filledColor = lightBlackColor,
  }) : super(key: key);

  @override
  State<ReusableTextForm> createState() => _ReusableTextFormState();
}

class _ReusableTextFormState extends State<ReusableTextForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText!,
      style: const TextStyle(color: whiteColor),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 1, color: Colors.grey),
        ),
        filled: true,
        fillColor: widget.filledColor,
        suffixIcon: widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
        enabled: widget.enabled!,
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: greyColor),
        contentPadding: const EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white, width: 3),
          // Set border color to white
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white, width: 3),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white, width: 3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(width: 3, color: Colors.white),
        ),
      ),
      // validations
      validator: widget.validator,
    );
  }
}
