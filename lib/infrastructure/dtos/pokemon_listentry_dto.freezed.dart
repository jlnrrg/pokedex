// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_listentry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonListentryDTO _$PokemonListentryDTOFromJson(Map<String, dynamic> json) {
  return _PokemonListentryDTO.fromJson(json);
}

/// @nodoc
mixin _$PokemonListentryDTO {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonListentryDTOCopyWith<PokemonListentryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListentryDTOCopyWith<$Res> {
  factory $PokemonListentryDTOCopyWith(
          PokemonListentryDTO value, $Res Function(PokemonListentryDTO) then) =
      _$PokemonListentryDTOCopyWithImpl<$Res>;
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonListentryDTOCopyWithImpl<$Res>
    implements $PokemonListentryDTOCopyWith<$Res> {
  _$PokemonListentryDTOCopyWithImpl(this._value, this._then);

  final PokemonListentryDTO _value;
  // ignore: unused_field
  final $Res Function(PokemonListentryDTO) _then;

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
abstract class _$$_PokemonListentryDTOCopyWith<$Res>
    implements $PokemonListentryDTOCopyWith<$Res> {
  factory _$$_PokemonListentryDTOCopyWith(_$_PokemonListentryDTO value,
          $Res Function(_$_PokemonListentryDTO) then) =
      __$$_PokemonListentryDTOCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url});
}

/// @nodoc
class __$$_PokemonListentryDTOCopyWithImpl<$Res>
    extends _$PokemonListentryDTOCopyWithImpl<$Res>
    implements _$$_PokemonListentryDTOCopyWith<$Res> {
  __$$_PokemonListentryDTOCopyWithImpl(_$_PokemonListentryDTO _value,
      $Res Function(_$_PokemonListentryDTO) _then)
      : super(_value, (v) => _then(v as _$_PokemonListentryDTO));

  @override
  _$_PokemonListentryDTO get _value => super._value as _$_PokemonListentryDTO;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_PokemonListentryDTO(
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
class _$_PokemonListentryDTO extends _PokemonListentryDTO {
  const _$_PokemonListentryDTO({required this.name, required this.url})
      : super._();

  factory _$_PokemonListentryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonListentryDTOFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonListentryDTO(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonListentryDTO &&
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
  _$$_PokemonListentryDTOCopyWith<_$_PokemonListentryDTO> get copyWith =>
      __$$_PokemonListentryDTOCopyWithImpl<_$_PokemonListentryDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonListentryDTOToJson(
      this,
    );
  }
}

abstract class _PokemonListentryDTO extends PokemonListentryDTO {
  const factory _PokemonListentryDTO(
      {required final String name,
      required final String url}) = _$_PokemonListentryDTO;
  const _PokemonListentryDTO._() : super._();

  factory _PokemonListentryDTO.fromJson(Map<String, dynamic> json) =
      _$_PokemonListentryDTO.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonListentryDTOCopyWith<_$_PokemonListentryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
