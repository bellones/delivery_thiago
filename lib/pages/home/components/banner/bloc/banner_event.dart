part of 'banner_bloc.dart';

abstract class BannerEvent {
  const BannerEvent();
}

class BannerLoading extends BannerEvent {
  final bool load;
  BannerLoading(this.load);
}

class BannerList extends BannerEvent {
  final List<BannerModel> list;
  BannerList(this.list);
}
