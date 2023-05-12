import 'package:delivery_thiago/models/produto_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'promocao_home_event.dart';
part 'promocao_home_state.dart';

class PromocaoHomeBloc extends Bloc<PromocaoHomeEvent, PromocaoHomeState> {
  PromocaoHomeBloc() : super(const PromocaoHomeState()) {
    on<PromocaoHomeLoading>(
      (event, emit) => emit(
        state.copyWith(loading: event.load),
      ),
    );
    on<PromocaoHomeList>(
      (event, emit) => emit(
        state.copyWith(list: event.list),
      ),
    );
  }
}
