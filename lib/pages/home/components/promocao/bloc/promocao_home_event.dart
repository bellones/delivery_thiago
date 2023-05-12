part of 'promocao_home_bloc.dart';

abstract class PromocaoHomeEvent {
  const PromocaoHomeEvent();
}

class PromocaoHomeLoading extends PromocaoHomeEvent {
  final bool load;
  PromocaoHomeLoading(this.load);
}

class PromocaoHomeList extends PromocaoHomeEvent {
  final List<ProdutoModel> list;
  PromocaoHomeList(this.list);
}
