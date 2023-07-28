import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivery_thiago/models/categoria_model.dart';
import 'package:flutter/material.dart';

class SearchCategoryListItem extends StatelessWidget {
  final CategoriaModel item;
  const SearchCategoryListItem({Key? key, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: (() => {}),
        child: Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              width: 256,
              height: 128,
              child: CachedNetworkImage(
                imageUrl: item.foto,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                      colorFilter: const ColorFilter.mode(
                          Colors.black38, BlendMode.colorBurn),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(8, 16, 0, 0),
            child: Text(
              item.titulo,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          )
        ]),
      ),
    );
  }
}
