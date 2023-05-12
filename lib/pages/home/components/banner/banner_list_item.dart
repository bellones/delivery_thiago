import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivery_thiago/config/size_config.dart';
import 'package:delivery_thiago/models/banner_model.dart';
import 'package:flutter/material.dart';

class BannerListItem extends StatelessWidget {
  final BannerModel banner;
  const BannerListItem({Key? key, required this.banner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, top: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: SizedBox(
          width: getProportionateScreenWidth(256),
          height: getProportionateScreenHeight(128),
          child: CachedNetworkImage(
            imageUrl: banner.foto,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
