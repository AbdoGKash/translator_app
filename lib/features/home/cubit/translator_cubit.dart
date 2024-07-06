import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'translator_state.dart';

class TranslatorCubit extends Cubit<TranslatorState> {
  TranslatorCubit() : super(TranslatorInitial());
}
