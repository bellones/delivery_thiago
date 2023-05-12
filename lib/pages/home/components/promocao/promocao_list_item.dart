import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivery_thiago/config/size_config.dart';
import 'package:delivery_thiago/models/produto_model.dart';
import 'package:flutter/material.dart';

class PromocaoListItem extends StatelessWidget {
  final ProdutoModel item;
  const PromocaoListItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        //
      },
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(children: [
          SizedBox(
            width: getProportionateScreenWidth(128),
            height: getProportionateScreenHeight(128),
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
          Text(
            item.nome,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "R\$ ${item.valor.toStringAsFixed(2)}",
            style: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }
}
