import 'package:bayyinah_rana/core/network/method/constant_api.dart';
import 'package:bayyinah_rana/models/ayah_model.dart';

class AyahApi {
  final ConstantApi api = ConstantApi();
  
  Future<AyahModel> getAyah() async {
    final response = await api.dio.get(ConstantApi.ayahNumberEndPoint);

    return AyahModelMapper.fromMap(response.data);
  }
}
