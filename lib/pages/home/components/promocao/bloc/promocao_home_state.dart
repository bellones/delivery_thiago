part of 'promocao_home_bloc.dart';

class PromocaoHomeState {
  final List<ProdutoModel> list;
  final bool loading;
  const PromocaoHomeState(
      {this.list = const <ProdutoModel>[], this.loading = false});

  PromocaoHomeState copyWith({bool? loading, List<ProdutoModel>? list}) {
    return PromocaoHomeState(
        list: list ?? this.list, loading: loading ?? this.loading);
  }
}
