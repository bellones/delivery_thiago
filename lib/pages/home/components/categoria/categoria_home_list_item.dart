import 'package:delivery_thiago/config/size_config.dart';
import 'package:delivery_thiago/models/categoria_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriaListItem extends StatelessWidget {
  final CategoriaModel item;
  const CategoriaListItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(item.titulo,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              Row(
                children: [
                  TextButton(
                    onPressed: () => {},
                    child: const Text("Ver Mais",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 12, 0, 8),
                      child: SvgPicture.asset(
                        "assets/icon/seta.svg",
                        width: 6,
                      ))
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: SizeConfig.screenWidth,
          height: 108,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: item.list.length,
              itemBuilder: (context, index) {
                var value = item.list[index];
                return GestureDetector(
                  onTap: () {
                    //
                  },
                  child: SizedBox(
                    width: 80,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(32),
                            child: Image.network(
                              value.foto,
                              width: 64,
                              height: 64,
                            )),
                        Container(
                          width: 80,
                          margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Center(
                            child: Text(value.nome,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal)),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
