part of 'loja_bloc.dart';

class LojaState {
  final bool loading;
  final List<TipoModel> list;
  const LojaState({this.loading = false, this.list = const <TipoModel>[]});

  LojaState copyWith({
    bool? loading,
    List<TipoModel>? list,
  }) {
    return LojaState(list: list ?? this.list, loading: loading ?? this.loading);
  }
}
