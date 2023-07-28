part of 'search_bloc.dart';

class SearchState {
  final List<CategoriaModel> list;
  final String busca;
  const SearchState({this.busca = '', this.list = const <CategoriaModel>[]});

  SearchState copyWith({
    String? busca,
    List<CategoriaModel>? list,
  }) {
    return SearchState(busca: busca ?? this.busca, list: list ?? this.list);
  }
}
