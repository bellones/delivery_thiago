import 'package:delivery_thiago/models/categoria_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'categoria_home_event.dart';
part 'categoria_home_state.dart';

class CategoriaHomeBloc extends Bloc<CategoriaHomeEvent, CategoriaHomeState> {
  CategoriaHomeBloc() : super(const CategoriaHomeState()) {
    on<CategoriaHomeLoading>(
        (event, emit) => emit(state.copyWith(loading: event.load)));
    on<CategoriaHomeList>(
      (event, emit) => emit(state.copyWith(list: event.list)),
    );
  }
}
