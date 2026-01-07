// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'surah_model.dart';

class SurahModelMapper extends ClassMapperBase<SurahModel> {
  SurahModelMapper._();

  static SurahModelMapper? _instance;
  static SurahModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SurahModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SurahModel';

  static String _$name(SurahModel v) => v.name;
  static const Field<SurahModel, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<SurahModel> fields = const {#name: _f$name};

  static SurahModel _instantiate(DecodingData data) {
    return SurahModel(name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static SurahModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SurahModel>(map);
  }

  static SurahModel fromJson(String json) {
    return ensureInitialized().decodeJson<SurahModel>(json);
  }
}

mixin SurahModelMappable {
  String toJson() {
    return SurahModelMapper.ensureInitialized().encodeJson<SurahModel>(
      this as SurahModel,
    );
  }

  Map<String, dynamic> toMap() {
    return SurahModelMapper.ensureInitialized().encodeMap<SurahModel>(
      this as SurahModel,
    );
  }

  SurahModelCopyWith<SurahModel, SurahModel, SurahModel> get copyWith =>
      _SurahModelCopyWithImpl<SurahModel, SurahModel>(
        this as SurahModel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SurahModelMapper.ensureInitialized().stringifyValue(
      this as SurahModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return SurahModelMapper.ensureInitialized().equalsValue(
      this as SurahModel,
      other,
    );
  }

  @override
  int get hashCode {
    return SurahModelMapper.ensureInitialized().hashValue(this as SurahModel);
  }
}

extension SurahModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SurahModel, $Out> {
  SurahModelCopyWith<$R, SurahModel, $Out> get $asSurahModel =>
      $base.as((v, t, t2) => _SurahModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SurahModelCopyWith<$R, $In extends SurahModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name});
  SurahModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SurahModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SurahModel, $Out>
    implements SurahModelCopyWith<$R, SurahModel, $Out> {
  _SurahModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SurahModel> $mapper =
      SurahModelMapper.ensureInitialized();
  @override
  $R call({String? name}) =>
      $apply(FieldCopyWithData({if (name != null) #name: name}));
  @override
  SurahModel $make(CopyWithData data) =>
      SurahModel(name: data.get(#name, or: $value.name));

  @override
  SurahModelCopyWith<$R2, SurahModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SurahModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

