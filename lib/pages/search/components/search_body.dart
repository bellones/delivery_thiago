import 'package:delivery_thiago/pages/search/components/search_category_list/search_category_list.dart';
import 'package:delivery_thiago/pages/search/components/search_field/search_field.dart';
import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [SearchField(), SearchCategoryList()]),
      ),
    );
  }
}
