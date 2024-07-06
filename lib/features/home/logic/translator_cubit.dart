import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

part 'translator_state.dart';

class TranslatorCubit extends Cubit<TranslatorState> {
  final outputController = TextEditingController();

  final translator = GoogleTranslator();

  String inputText = '';
  String inputLanguageCode = 'ar';
  String outputLanguageCode = 'en';
  TranslatorCubit() : super(TranslatorInitial());

  Future<void> translatorText() async {
    final translated = await translator.translate(inputText,
        from: inputLanguageCode, to: outputLanguageCode);
    outputController.text = translated.text;
  }
}
