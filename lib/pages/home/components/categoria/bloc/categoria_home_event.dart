part of 'categoria_home_bloc.dart';

abstract class CategoriaHomeEvent {
  const CategoriaHomeEvent();
}

class CategoriaHomeLoading extends CategoriaHomeEvent {
  final bool load;
  CategoriaHomeLoading(this.load);
}

class CategoriaHomeList extends CategoriaHomeEvent {
  final List<CategoriaModel> list;
  CategoriaHomeList(this.list);
}
