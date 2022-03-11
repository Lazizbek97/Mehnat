import 'package:flutter/material.dart';
import 'package:mehnatkash/core/constants/constants.dart';


class PasswordInput extends StatefulWidget {
  PasswordInput({
    Key? key,
    required TextEditingController passwordConstroller,
    required String hintText,
  })  : _passwordConstroller = passwordConstroller,
        _hintText = hintText,
        super(key: key);

  final TextEditingController _passwordConstroller;
  final String _hintText;

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget._passwordConstroller,
      obscureText: isVisible,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        labelText: widget._hintText,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        labelStyle: TextStyle(
          fontSize: Constants.disTextSize,
          color: Constants.color90,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Constants.inputBorderColor,
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            isVisible = !isVisible;
            setState(() {});
          },
          icon: isVisible
              ? const Icon(
                  Icons.visibility_off_outlined,
                  color: Colors.black,
                )
              : const Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.black,
                ),
        ),
      ),
    );
  }
}