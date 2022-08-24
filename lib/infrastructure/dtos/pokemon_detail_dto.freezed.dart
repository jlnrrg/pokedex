// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonDetailDTO _$PokemonDetailDTOFromJson(Map<String, dynamic> json) {
  return _PokemonDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$PokemonDetailDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'species',
      fromJson: PokemonDetailDTO.speciesURLFromJSON,
      toJson: PokemonDetailDTO.speciesURLToJSON)
  String get speciesUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDetailDTOCopyWith<PokemonDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailDTOCopyWith<$Res> {
  factory $PokemonDetailDTOCopyWith(
          PokemonDetailDTO value, $Res Function(PokemonDetailDTO) then) =
      _$PokemonDetailDTOCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      @JsonKey(name: 'species', fromJson: PokemonDetailDTO.speciesURLFromJSON, toJson: PokemonDetailDTO.speciesURLToJSON)
          String speciesUrl});
}

/// @nodoc
class _$PokemonDetailDTOCopyWithImpl<$Res>
    implements $PokemonDetailDTOCopyWith<$Res> {
  _$PokemonDetailDTOCopyWithImpl(this._value, this._then);

  final PokemonDetailDTO _value;
  // ignore: unused_field
  final $Res Function(PokemonDetailDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? speciesUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      speciesUrl: speciesUrl == freezed
          ? _value.speciesUrl
          : speciesUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PokemonDetailDTOCopyWith<$Res>
    implements $PokemonDetailDTOCopyWith<$Res> {
  factory _$$_PokemonDetailDTOCopyWith(
          _$_PokemonDetailDTO value, $Res Function(_$_PokemonDetailDTO) then) =
      __$$_PokemonDetailDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      @JsonKey(name: 'species', fromJson: PokemonDetailDTO.speciesURLFromJSON, toJson: PokemonDetailDTO.speciesURLToJSON)
          String speciesUrl});
}

/// @nodoc
class __$$_PokemonDetailDTOCopyWithImpl<$Res>
    extends _$PokemonDetailDTOCopyWithImpl<$Res>
    implements _$$_PokemonDetailDTOCopyWith<$Res> {
  __$$_PokemonDetailDTOCopyWithImpl(
      _$_PokemonDetailDTO _value, $Res Function(_$_PokemonDetailDTO) _then)
      : super(_value, (v) => _then(v as _$_PokemonDetailDTO));

  @override
  _$_PokemonDetailDTO get _value => super._value as _$_PokemonDetailDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? speciesUrl = freezed,
  }) {
    return _then(_$_PokemonDetailDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      speciesUrl: speciesUrl == freezed
          ? _value.speciesUrl
          : speciesUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonDetailDTO extends _PokemonDetailDTO {
  const _$_PokemonDetailDTO(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      @JsonKey(name: 'species', fromJson: PokemonDetailDTO.speciesURLFromJSON, toJson: PokemonDetailDTO.speciesURLToJSON)
          required this.speciesUrl})
      : super._();

  factory _$_PokemonDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonDetailDTOFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  @override
  @JsonKey(
      name: 'species',
      fromJson: PokemonDetailDTO.speciesURLFromJSON,
      toJson: PokemonDetailDTO.speciesURLToJSON)
  final String speciesUrl;

  @override
  String toString() {
    return 'PokemonDetailDTO(id: $id, name: $name, height: $height, weight: $weight, speciesUrl: $speciesUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonDetailDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality()
                .equals(other.speciesUrl, speciesUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(speciesUrl));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonDetailDTOCopyWith<_$_PokemonDetailDTO> get copyWith =>
      __$$_PokemonDetailDTOCopyWithImpl<_$_PokemonDetailDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonDetailDTOToJson(
      this,
    );
  }
}

abstract class _PokemonDetailDTO extends PokemonDetailDTO {
  const factory _PokemonDetailDTO(
      {required final int id,
      required final String name,
      required final int height,
      required final int weight,
      @JsonKey(name: 'species', fromJson: PokemonDetailDTO.speciesURLFromJSON, toJson: PokemonDetailDTO.speciesURLToJSON)
          required final String speciesUrl}) = _$_PokemonDetailDTO;
  const _PokemonDetailDTO._() : super._();

  factory _PokemonDetailDTO.fromJson(Map<String, dynamic> json) =
      _$_PokemonDetailDTO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get height;
  @override
  int get weight;
  @override
  @JsonKey(
      name: 'species',
      fromJson: PokemonDetailDTO.speciesURLFromJSON,
      toJson: PokemonDetailDTO.speciesURLToJSON)
  String get speciesUrl;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonDetailDTOCopyWith<_$_PokemonDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
