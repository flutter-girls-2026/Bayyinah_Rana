// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'ayah_data_model.dart';

class AyahDataModelMapper extends ClassMapperBase<AyahDataModel> {
  AyahDataModelMapper._();

  static AyahDataModelMapper? _instance;
  static AyahDataModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AyahDataModelMapper._());
      SurahModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AyahDataModel';

  static int _$numberInSurah(AyahDataModel v) => v.numberInSurah;
  static const Field<AyahDataModel, int> _f$numberInSurah = Field(
    'numberInSurah',
    _$numberInSurah,
  );
  static String _$text(AyahDataModel v) => v.text;
  static const Field<AyahDataModel, String> _f$text = Field('text', _$text);
  static SurahModel _$surah(AyahDataModel v) => v.surah;
  static const Field<AyahDataModel, SurahModel> _f$surah = Field(
    'surah',
    _$surah,
  );

  @override
  final MappableFields<AyahDataModel> fields = const {
    #numberInSurah: _f$numberInSurah,
    #text: _f$text,
    #surah: _f$surah,
  };

  static AyahDataModel _instantiate(DecodingData data) {
    return AyahDataModel(
      data.dec(_f$numberInSurah),
      data.dec(_f$text),
      data.dec(_f$surah),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AyahDataModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AyahDataModel>(map);
  }

  static AyahDataModel fromJson(String json) {
    return ensureInitialized().decodeJson<AyahDataModel>(json);
  }
}

mixin AyahDataModelMappable {
  String toJson() {
    return AyahDataModelMapper.ensureInitialized().encodeJson<AyahDataModel>(
      this as AyahDataModel,
    );
  }

  Map<String, dynamic> toMap() {
    return AyahDataModelMapper.ensureInitialized().encodeMap<AyahDataModel>(
      this as AyahDataModel,
    );
  }

  AyahDataModelCopyWith<AyahDataModel, AyahDataModel, AyahDataModel>
  get copyWith => _AyahDataModelCopyWithImpl<AyahDataModel, AyahDataModel>(
    this as AyahDataModel,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return AyahDataModelMapper.ensureInitialized().stringifyValue(
      this as AyahDataModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return AyahDataModelMapper.ensureInitialized().equalsValue(
      this as AyahDataModel,
      other,
    );
  }

  @override
  int get hashCode {
    return AyahDataModelMapper.ensureInitialized().hashValue(
      this as AyahDataModel,
    );
  }
}

extension AyahDataModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AyahDataModel, $Out> {
  AyahDataModelCopyWith<$R, AyahDataModel, $Out> get $asAyahDataModel =>
      $base.as((v, t, t2) => _AyahDataModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AyahDataModelCopyWith<$R, $In extends AyahDataModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  SurahModelCopyWith<$R, SurahModel, SurahModel> get surah;
  $R call({int? numberInSurah, String? text, SurahModel? surah});
  AyahDataModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AyahDataModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AyahDataModel, $Out>
    implements AyahDataModelCopyWith<$R, AyahDataModel, $Out> {
  _AyahDataModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AyahDataModel> $mapper =
      AyahDataModelMapper.ensureInitialized();
  @override
  SurahModelCopyWith<$R, SurahModel, SurahModel> get surah =>
      $value.surah.copyWith.$chain((v) => call(surah: v));
  @override
  $R call({int? numberInSurah, String? text, SurahModel? surah}) => $apply(
    FieldCopyWithData({
      if (numberInSurah != null) #numberInSurah: numberInSurah,
      if (text != null) #text: text,
      if (surah != null) #surah: surah,
    }),
  );
  @override
  AyahDataModel $make(CopyWithData data) => AyahDataModel(
    data.get(#numberInSurah, or: $value.numberInSurah),
    data.get(#text, or: $value.text),
    data.get(#surah, or: $value.surah),
  );

  @override
  AyahDataModelCopyWith<$R2, AyahDataModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AyahDataModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

