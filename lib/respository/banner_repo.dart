import 'package:delivery_thiago/models/banner_model.dart';
import 'package:delivery_thiago/services/banner_service.dart';
import 'package:delivery_thiago/usecases/banner_usecase.dart';

class BannerRepo implements BannerUseCase {
  final bannerService = BannerSerice();

  @override
  Future<List<BannerModel>> getBanner() async {
    return await bannerService.getBanner();
  }
}
