// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_flavor_text_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonFlavorTextDTO _$PokemonFlavorTextDTOFromJson(Map<String, dynamic> json) {
  return _PokemonFlavorTextDTO.fromJson(json);
}

/// @nodoc
mixin _$PokemonFlavorTextDTO {
  String get flavor_text => throw _privateConstructorUsedError;
  String get language_code => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonFlavorTextDTOCopyWith<PokemonFlavorTextDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonFlavorTextDTOCopyWith<$Res> {
  factory $PokemonFlavorTextDTOCopyWith(PokemonFlavorTextDTO value,
          $Res Function(PokemonFlavorTextDTO) then) =
      _$PokemonFlavorTextDTOCopyWithImpl<$Res>;
  $Res call({String flavor_text, String language_code, String version});
}

/// @nodoc
class _$PokemonFlavorTextDTOCopyWithImpl<$Res>
    implements $PokemonFlavorTextDTOCopyWith<$Res> {
  _$PokemonFlavorTextDTOCopyWithImpl(this._value, this._then);

  final PokemonFlavorTextDTO _value;
  // ignore: unused_field
  final $Res Function(PokemonFlavorTextDTO) _then;

  @override
  $Res call({
    Object? flavor_text = freezed,
    Object? language_code = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      flavor_text: flavor_text == freezed
          ? _value.flavor_text
          : flavor_text // ignore: cast_nullable_to_non_nullable
              as String,
      language_code: language_code == freezed
          ? _value.language_code
          : language_code // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PokemonFlavorTextDTOCopyWith<$Res>
    implements $PokemonFlavorTextDTOCopyWith<$Res> {
  factory _$$_PokemonFlavorTextDTOCopyWith(_$_PokemonFlavorTextDTO value,
          $Res Function(_$_PokemonFlavorTextDTO) then) =
      __$$_PokemonFlavorTextDTOCopyWithImpl<$Res>;
  @override
  $Res call({String flavor_text, String language_code, String version});
}

/// @nodoc
class __$$_PokemonFlavorTextDTOCopyWithImpl<$Res>
    extends _$PokemonFlavorTextDTOCopyWithImpl<$Res>
    implements _$$_PokemonFlavorTextDTOCopyWith<$Res> {
  __$$_PokemonFlavorTextDTOCopyWithImpl(_$_PokemonFlavorTextDTO _value,
      $Res Function(_$_PokemonFlavorTextDTO) _then)
      : super(_value, (v) => _then(v as _$_PokemonFlavorTextDTO));

  @override
  _$_PokemonFlavorTextDTO get _value => super._value as _$_PokemonFlavorTextDTO;

  @override
  $Res call({
    Object? flavor_text = freezed,
    Object? language_code = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_PokemonFlavorTextDTO(
      flavor_text: flavor_text == freezed
          ? _value.flavor_text
          : flavor_text // ignore: cast_nullable_to_non_nullable
              as String,
      language_code: language_code == freezed
          ? _value.language_code
          : language_code // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonFlavorTextDTO extends _PokemonFlavorTextDTO {
  const _$_PokemonFlavorTextDTO(
      {required this.flavor_text,
      required this.language_code,
      required this.version})
      : super._();

  factory _$_PokemonFlavorTextDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonFlavorTextDTOFromJson(json);

  @override
  final String flavor_text;
  @override
  final String language_code;
  @override
  final String version;

  @override
  String toString() {
    return 'PokemonFlavorTextDTO(flavor_text: $flavor_text, language_code: $language_code, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonFlavorTextDTO &&
            const DeepCollectionEquality()
                .equals(other.flavor_text, flavor_text) &&
            const DeepCollectionEquality()
                .equals(other.language_code, language_code) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flavor_text),
      const DeepCollectionEquality().hash(language_code),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonFlavorTextDTOCopyWith<_$_PokemonFlavorTextDTO> get copyWith =>
      __$$_PokemonFlavorTextDTOCopyWithImpl<_$_PokemonFlavorTextDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonFlavorTextDTOToJson(
      this,
    );
  }
}

abstract class _PokemonFlavorTextDTO extends PokemonFlavorTextDTO {
  const factory _PokemonFlavorTextDTO(
      {required final String flavor_text,
      required final String language_code,
      required final String version}) = _$_PokemonFlavorTextDTO;
  const _PokemonFlavorTextDTO._() : super._();

  factory _PokemonFlavorTextDTO.fromJson(Map<String, dynamic> json) =
      _$_PokemonFlavorTextDTO.fromJson;

  @override
  String get flavor_text;
  @override
  String get language_code;
  @override
  String get version;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonFlavorTextDTOCopyWith<_$_PokemonFlavorTextDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
