part of 'categoria_home_bloc.dart';

class CategoriaHomeState {
  final bool loading;
  final List<CategoriaModel> list;

  const CategoriaHomeState(
      {this.loading = false, this.list = const <CategoriaModel>[]});
  CategoriaHomeState copyWith({bool? loading, List<CategoriaModel>? list}) {
    return CategoriaHomeState(
        list: list ?? this.list, loading: loading ?? this.loading);
  }
}
