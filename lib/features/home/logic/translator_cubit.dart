import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

part 'translator_state.dart';

class TranslatorCubit extends Cubit<TranslatorState> {
  final outputController = TextEditingController(text: "result hrer ... ");

  final translator = GoogleTranslator();

  String inputText = '';
  String inputLanguage = 'ar';
  String outputLanguage = 'en';
  TranslatorCubit() : super(TranslatorInitial());

  Future<void> translatorText() async {
    final translated = await translator.translate(inputText,
        from: inputLanguage, to: outputLanguage);
    outputController.text = translated.text;
  }
}
