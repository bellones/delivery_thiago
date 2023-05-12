part of 'loja_bloc.dart';

class LojaEvent {
  const LojaEvent();
}

class LojaLoading extends LojaEvent {
  final bool load;
  LojaLoading(this.load);
}

class LojaList extends LojaEvent {
  final List<TipoModel> list;
  LojaList(this.list);
}
