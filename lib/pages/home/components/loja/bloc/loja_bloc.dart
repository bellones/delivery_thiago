import 'package:delivery_thiago/models/tipo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'loja_event.dart';
part 'loja_state.dart';

class LojaBloc extends Bloc<LojaEvent, LojaState> {
  LojaBloc() : super(const LojaState()) {
    on<LojaLoading>((event, emit) => emit(state.copyWith(loading: event.load)));
    on<LojaList>((event, emit) => emit(state.copyWith(list: event.list)));
  }
}
