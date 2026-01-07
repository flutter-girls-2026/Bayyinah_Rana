// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'ayah_model.dart';

class AyahModelMapper extends ClassMapperBase<AyahModel> {
  AyahModelMapper._();

  static AyahModelMapper? _instance;
  static AyahModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AyahModelMapper._());
      AyahDataModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AyahModel';

  static int _$code(AyahModel v) => v.code;
  static const Field<AyahModel, int> _f$code = Field('code', _$code);
  static String _$status(AyahModel v) => v.status;
  static const Field<AyahModel, String> _f$status = Field('status', _$status);
  static AyahDataModel _$data(AyahModel v) => v.data;
  static const Field<AyahModel, AyahDataModel> _f$data = Field('data', _$data);

  @override
  final MappableFields<AyahModel> fields = const {
    #code: _f$code,
    #status: _f$status,
    #data: _f$data,
  };

  static AyahModel _instantiate(DecodingData data) {
    return AyahModel(data.dec(_f$code), data.dec(_f$status), data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static AyahModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AyahModel>(map);
  }

  static AyahModel fromJson(String json) {
    return ensureInitialized().decodeJson<AyahModel>(json);
  }
}

mixin AyahModelMappable {
  String toJson() {
    return AyahModelMapper.ensureInitialized().encodeJson<AyahModel>(
      this as AyahModel,
    );
  }

  Map<String, dynamic> toMap() {
    return AyahModelMapper.ensureInitialized().encodeMap<AyahModel>(
      this as AyahModel,
    );
  }

  AyahModelCopyWith<AyahModel, AyahModel, AyahModel> get copyWith =>
      _AyahModelCopyWithImpl<AyahModel, AyahModel>(
        this as AyahModel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return AyahModelMapper.ensureInitialized().stringifyValue(
      this as AyahModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return AyahModelMapper.ensureInitialized().equalsValue(
      this as AyahModel,
      other,
    );
  }

  @override
  int get hashCode {
    return AyahModelMapper.ensureInitialized().hashValue(this as AyahModel);
  }
}

extension AyahModelValueCopy<$R, $Out> on ObjectCopyWith<$R, AyahModel, $Out> {
  AyahModelCopyWith<$R, AyahModel, $Out> get $asAyahModel =>
      $base.as((v, t, t2) => _AyahModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AyahModelCopyWith<$R, $In extends AyahModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  AyahDataModelCopyWith<$R, AyahDataModel, AyahDataModel> get data;
  $R call({int? code, String? status, AyahDataModel? data});
  AyahModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AyahModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AyahModel, $Out>
    implements AyahModelCopyWith<$R, AyahModel, $Out> {
  _AyahModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AyahModel> $mapper =
      AyahModelMapper.ensureInitialized();
  @override
  AyahDataModelCopyWith<$R, AyahDataModel, AyahDataModel> get data =>
      $value.data.copyWith.$chain((v) => call(data: v));
  @override
  $R call({int? code, String? status, AyahDataModel? data}) => $apply(
    FieldCopyWithData({
      if (code != null) #code: code,
      if (status != null) #status: status,
      if (data != null) #data: data,
    }),
  );
  @override
  AyahModel $make(CopyWithData data) => AyahModel(
    data.get(#code, or: $value.code),
    data.get(#status, or: $value.status),
    data.get(#data, or: $value.data),
  );

  @override
  AyahModelCopyWith<$R2, AyahModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AyahModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

