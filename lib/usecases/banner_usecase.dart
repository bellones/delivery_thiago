import 'package:delivery_thiago/models/banner_model.dart';

abstract class BannerUseCase {
  Future<List<BannerModel>> getBanner() async {
    return [];
  }
}
