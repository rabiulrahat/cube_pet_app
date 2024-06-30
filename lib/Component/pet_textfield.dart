import 'package:flutter/material.dart';

class PetTextfield extends StatelessWidget {
  final controller;
  final String hinText;
  final obscureText;
  final String label;

  const PetTextfield(
      {super.key,
      required this.controller,
      required this.hinText,
      required this.obscureText,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        cursorColor: Colors.amber,
        cursorErrorColor: Colors.red,
        enableSuggestions: true,
        obscureText: obscureText,
        // strutStyle: ,
        controller: controller,
        textCapitalization: TextCapitalization.characters,
        decoration: InputDecoration(
          label:Text(label),
          hintText: hinText,
          hintStyle: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.red),
          // hintStyle: tex,\
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 50, color: Colors.amber,
                style: BorderStyle.solid,
                //  strokeAlign : strokeAlignInside,
              )),
          fillColor: const Color.fromARGB(255, 237, 190, 164),
          filled: true,
        ),
      ),

    );
  }
}



