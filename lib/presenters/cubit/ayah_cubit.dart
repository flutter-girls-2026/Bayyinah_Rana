import 'package:bayyinah_rana/core/network/method/ayah_api.dart';
import 'package:bayyinah_rana/models/ayah_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'ayah_state.dart';

class AyahCubit extends Cubit<AyahState> {
  final AyahApi ayahApi;
  AyahCubit(this.ayahApi) : super(AyahInitial());

  Future<void> loadAyah({int count = 5}) async {
    emit(AyahLoading());
    try {
      final ayahs = <AyahModel>[];

      for (int i = 0; i < count; i++) {
        final ayah = await ayahApi.getAyah();
        ayahs.add(ayah);
      }

      emit(AyahLoaded(ayahat: ayahs));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
