import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String errorText, hintText, labelText;
  final void Function(String) onChanged;
  final TextInputType keyboardType;
  final bool obscureText;

  const CustomTextField({Key key, this.errorText, this.hintText, this.labelText, this.onChanged, this.keyboardType, this.obscureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      decoration: InputDecoration(errorText: (errorText?.isEmpty ?? true) ? null : errorText, hintText: hintText, labelText: labelText),
      obscureText: obscureText ?? false,
      onChanged: onChanged,
      keyboardType: keyboardType,
      maxLines: 1,
    );
  }
}
