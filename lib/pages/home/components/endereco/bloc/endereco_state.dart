part of 'endereco_bloc.dart';

class EnderecoState {
  final String endPrincipal;
  final EnderecoModel? end;
  final List<EnderecoModel> list;
  const EnderecoState({
    this.end,
    this.endPrincipal = "Sem Endereço Selecionado",
    this.list = const <EnderecoModel>[],
  });
  EnderecoState copyWith(
      {String? endPrincipal, EnderecoModel? end, List<EnderecoModel>? list}) {
    return EnderecoState(
      end: end ?? this.end,
      list: list ?? this.list,
      endPrincipal: endPrincipal ?? this.endPrincipal,
    );
  }
}

class EnderecoInitial extends EnderecoState {}
