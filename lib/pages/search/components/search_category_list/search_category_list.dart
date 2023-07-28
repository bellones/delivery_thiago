import 'package:delivery_thiago/pages/search/bloc/search_bloc.dart';
import 'package:delivery_thiago/pages/search/components/search_category_list/search_category_list_item.dart';
import 'package:delivery_thiago/pages/search/controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';

class SearchCategoryList extends StatelessWidget {
  const SearchCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = SearchCategoryController(context: context);
    return FutureBuilder(
      future: controller.getCategory(),
      builder: (context, snapshot) {
        return BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return Visibility(
                replacement: const Column(
                  children: [
                    ListTileShimmer(),
                    ListTileShimmer(),
                    ListTileShimmer(),
                    ListTileShimmer(),
                    ListTileShimmer(),
                    ListTileShimmer(),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Categorias",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 300,
                          childAspectRatio: 2,
                        ),
                        itemCount: state.list.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final item = state.list[index];
                          return SearchCategoryListItem(item: item);
                        }),
                  ],
                ));
          },
        );
      },
    );
  }
}
