import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    this.customLabel,
    this.customHinText,
    this.customIcon,
    this.customKeyboarType,
    this.customObscureText = false,
    required this.formProprety,
    required this.formValues,
  }) : super(key: key);

  final String? customLabel;
  final String? customHinText;
  final IconData? customIcon;
  final TextInputType? customKeyboarType;
  final bool customObscureText;

  final String formProprety;
  final Map<String, String> formValues;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      child: TextFormField(
        obscureText: customObscureText,
        keyboardType: customKeyboarType,
        autofocus: true,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          label: Text(
            '${(customLabel == null) ? '' : customLabel}',
            style: const TextStyle(fontSize: 20),
          ),
          hintText: customHinText,
          icon: customIcon == null ? null : Icon(customIcon),
        ),
        onChanged: (value) => formValues[formProprety] = value,
      ),
    );
  }
}
