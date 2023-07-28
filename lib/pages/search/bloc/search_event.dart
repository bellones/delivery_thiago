part of 'search_bloc.dart';

abstract class SearchEvent {
  const SearchEvent();
}

class SearchInputText extends SearchEvent {
  final String busca;
  SearchInputText(this.busca);
}

class LoadCategoryList extends SearchEvent {
  final List<CategoriaModel> list;

  LoadCategoryList(this.list);
}
