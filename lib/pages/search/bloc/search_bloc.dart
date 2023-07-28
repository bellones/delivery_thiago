import 'package:delivery_thiago/models/categoria_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState()) {
    on<SearchInputText>(
      (event, emit) => emit(state.copyWith(busca: event.busca)),
    );
    on<LoadCategoryList>(
      (event, emit) => emit(state.copyWith(list: event.list)),
    );
  }
}
