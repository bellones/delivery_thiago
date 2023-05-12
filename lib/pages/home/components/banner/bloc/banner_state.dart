part of 'banner_bloc.dart';

class BannerState {
  final bool loading;
  final List<BannerModel> list;
  const BannerState({this.loading = false, this.list = const <BannerModel>[]});
  BannerState copyWith({bool? loading, List<BannerModel>? list}) {
    return BannerState(
        list: list ?? this.list, loading: loading ?? this.loading);
  }
}
