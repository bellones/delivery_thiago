import 'package:delivery_thiago/models/banner_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'banner_event.dart';
part 'banner_state.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  BannerBloc() : super(const BannerState()) {
    on<BannerLoading>(
        (event, emit) => emit(state.copyWith(loading: event.load)));
    on<BannerList>(
      (event, emit) => emit(state.copyWith(list: event.list)),
    );
  }
}
