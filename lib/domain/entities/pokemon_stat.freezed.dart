// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonStat {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get effort => throw _privateConstructorUsedError;
  int get base => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonStatCopyWith<PokemonStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatCopyWith<$Res> {
  factory $PokemonStatCopyWith(
          PokemonStat value, $Res Function(PokemonStat) then) =
      _$PokemonStatCopyWithImpl<$Res>;
  $Res call({int id, String name, int effort, int base});
}

/// @nodoc
class _$PokemonStatCopyWithImpl<$Res> implements $PokemonStatCopyWith<$Res> {
  _$PokemonStatCopyWithImpl(this._value, this._then);

  final PokemonStat _value;
  // ignore: unused_field
  final $Res Function(PokemonStat) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? effort = freezed,
    Object? base = freezed,
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
      effort: effort == freezed
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PokemonStatCopyWith<$Res>
    implements $PokemonStatCopyWith<$Res> {
  factory _$$_PokemonStatCopyWith(
          _$_PokemonStat value, $Res Function(_$_PokemonStat) then) =
      __$$_PokemonStatCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, int effort, int base});
}

/// @nodoc
class __$$_PokemonStatCopyWithImpl<$Res> extends _$PokemonStatCopyWithImpl<$Res>
    implements _$$_PokemonStatCopyWith<$Res> {
  __$$_PokemonStatCopyWithImpl(
      _$_PokemonStat _value, $Res Function(_$_PokemonStat) _then)
      : super(_value, (v) => _then(v as _$_PokemonStat));

  @override
  _$_PokemonStat get _value => super._value as _$_PokemonStat;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? effort = freezed,
    Object? base = freezed,
  }) {
    return _then(_$_PokemonStat(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      effort: effort == freezed
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PokemonStat extends _PokemonStat {
  const _$_PokemonStat(
      {required this.id,
      required this.name,
      required this.effort,
      required this.base})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final int effort;
  @override
  final int base;

  @override
  String toString() {
    return 'PokemonStat(id: $id, name: $name, effort: $effort, base: $base)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonStat &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.effort, effort) &&
            const DeepCollectionEquality().equals(other.base, base));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(effort),
      const DeepCollectionEquality().hash(base));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonStatCopyWith<_$_PokemonStat> get copyWith =>
      __$$_PokemonStatCopyWithImpl<_$_PokemonStat>(this, _$identity);
}

abstract class _PokemonStat extends PokemonStat {
  const factory _PokemonStat(
      {required final int id,
      required final String name,
      required final int effort,
      required final int base}) = _$_PokemonStat;
  const _PokemonStat._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  int get effort;
  @override
  int get base;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonStatCopyWith<_$_PokemonStat> get copyWith =>
      throw _privateConstructorUsedError;
}
