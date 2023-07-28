import 'package:delivery_thiago/config/constants.dart';
import 'package:delivery_thiago/config/size_config.dart';
import 'package:delivery_thiago/pages/search/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: kSecondaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          onSubmitted: ((value) {
            context.read<SearchBloc>().add(SearchInputText(value));
          }),
          onChanged: ((value) {
            context.read<SearchBloc>().add(SearchInputText(value));
          }),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(9)),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Buscar por item ou loja",
            suffixIcon: IconButton(
                icon: const Icon(
                  Icons.search,
                  color: kPrimaryColor,
                ),
                onPressed: () {}),
          ),
        ),
      ),
    );
  }
}
