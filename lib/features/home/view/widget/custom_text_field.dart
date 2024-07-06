import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/translator_cubit.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String hint;
  const CustomTextField({
    super.key,
    this.controller,
    required this.hint,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      maxLines: 5,
      decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          hintText: widget.hint),
      onChanged: (value) {
        context.read<TranslatorCubit>().inputText = value;
      },
    );
  }
}
