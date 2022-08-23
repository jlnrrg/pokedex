// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonTypeDTO _$PokemonTypeDTOFromJson(Map<String, dynamic> json) {
  return _PokemonTypeDTO.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeDTO {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeDTOCopyWith<PokemonTypeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeDTOCopyWith<$Res> {
  factory $PokemonTypeDTOCopyWith(
          PokemonTypeDTO value, $Res Function(PokemonTypeDTO) then) =
      _$PokemonTypeDTOCopyWithImpl<$Res>;
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonTypeDTOCopyWithImpl<$Res>
    implements $PokemonTypeDTOCopyWith<$Res> {
  _$PokemonTypeDTOCopyWithImpl(this._value, this._then);

  final PokemonTypeDTO _value;
  // ignore: unused_field
  final $Res Function(PokemonTypeDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PokemonTypeDTOCopyWith<$Res>
    implements $PokemonTypeDTOCopyWith<$Res> {
  factory _$$_PokemonTypeDTOCopyWith(
          _$_PokemonTypeDTO value, $Res Function(_$_PokemonTypeDTO) then) =
      __$$_PokemonTypeDTOCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url});
}

/// @nodoc
class __$$_PokemonTypeDTOCopyWithImpl<$Res>
    extends _$PokemonTypeDTOCopyWithImpl<$Res>
    implements _$$_PokemonTypeDTOCopyWith<$Res> {
  __$$_PokemonTypeDTOCopyWithImpl(
      _$_PokemonTypeDTO _value, $Res Function(_$_PokemonTypeDTO) _then)
      : super(_value, (v) => _then(v as _$_PokemonTypeDTO));

  @override
  _$_PokemonTypeDTO get _value => super._value as _$_PokemonTypeDTO;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_PokemonTypeDTO(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonTypeDTO extends _PokemonTypeDTO {
  const _$_PokemonTypeDTO({required this.name, required this.url}) : super._();

  factory _$_PokemonTypeDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonTypeDTOFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonTypeDTO(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonTypeDTO &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonTypeDTOCopyWith<_$_PokemonTypeDTO> get copyWith =>
      __$$_PokemonTypeDTOCopyWithImpl<_$_PokemonTypeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonTypeDTOToJson(
      this,
    );
  }
}

abstract class _PokemonTypeDTO extends PokemonTypeDTO {
  const factory _PokemonTypeDTO(
      {required final String name,
      required final String url}) = _$_PokemonTypeDTO;
  const _PokemonTypeDTO._() : super._();

  factory _PokemonTypeDTO.fromJson(Map<String, dynamic> json) =
      _$_PokemonTypeDTO.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonTypeDTOCopyWith<_$_PokemonTypeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
