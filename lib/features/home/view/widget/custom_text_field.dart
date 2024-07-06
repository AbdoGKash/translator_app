import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/translator_cubit.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  const CustomTextField({
    super.key,
    this.controller,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: 5,
      decoration:
          InputDecoration(border: const OutlineInputBorder(), hintText: hint),
      onChanged: (value) {
        context.read<TranslatorCubit>().inputText = value;
      },
    );
  }
}
