import 'package:flutter/material.dart';
import 'package:mehnatkash/core/constants/constants.dart';

class EmailNameInput extends StatelessWidget {
  const EmailNameInput({
    Key? key,
    required TextEditingController constroller,
    required String hintText,
  })  : _hintText = hintText,
        _constroller = constroller,
        super(key: key);

  final TextEditingController _constroller;
  final String _hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _constroller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: _hintText,
        labelStyle: TextStyle(
          fontSize: Constants.disTextSize,
          color: Constants.color90,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Constants.inputBorderColor,
          ),
        ),
      ),
      validator: (val) {
        if (val!.isEmpty) {
          return "Bo'sh qolishi mumkin emas!";
        }
      },
    );
  }
}
