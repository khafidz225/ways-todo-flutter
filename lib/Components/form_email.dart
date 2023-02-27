import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class FormEmail extends StatelessWidget {
  const FormEmail({
    Key? key,
    required this.email,
  }) : super(key: key);

  final TextEditingController email;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autovalidateMode: AutovalidateMode.,
      controller: email,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == "") {
          return "Email tidak boleh kosong";
        }
        if (value != null && !EmailValidator.validate(value)) {
          return "Value harus berformat email";
        }
      },
      decoration: const InputDecoration(
          labelText: "Email",
          prefixIcon: Icon(Icons.mail),
          border: OutlineInputBorder()),
    );
  }
}
