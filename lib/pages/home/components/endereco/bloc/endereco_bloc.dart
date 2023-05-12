import 'package:delivery_thiago/models/endereco_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'endereco_event.dart';
part 'endereco_state.dart';

class EnderecoBloc extends Bloc<EnderecoEvent, EnderecoState> {
  EnderecoBloc() : super(EnderecoInitial()) {
    on<SelectEndereco>((event, emit) => emit(state.copyWith(end: event.end)));
    on<EnderecoList>((event, emit) => emit(state.copyWith(list: event.list)));
    on<EnderecoPrincipalText>(
      (event, emit) =>
          emit(state.copyWith(endPrincipal: event.enderecoPrincipal)),
    );
  }
}
