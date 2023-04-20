import 'package:flutter/material.dart';

class FlTextField extends StatelessWidget {
  final TextInputType fltextinputtype;
  final bool flobscuretext;
  final String flhinttext;

  const FlTextField({
    required this.fltextinputtype,
    required this.flobscuretext,
    required this.flhinttext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: flhinttext,
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(15),
      ),
    );
  }
}
