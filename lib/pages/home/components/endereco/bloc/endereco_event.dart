part of 'endereco_bloc.dart';

abstract class EnderecoEvent {}

class SelectEndereco extends EnderecoEvent {
  final EnderecoModel end;
  SelectEndereco(this.end);
}

class EnderecoList extends EnderecoEvent {
  final List<EnderecoModel> list;
  EnderecoList(this.list);
}

class EnderecoPrincipalText extends EnderecoEvent {
  final String enderecoPrincipal;
  EnderecoPrincipalText(this.enderecoPrincipal);
}
