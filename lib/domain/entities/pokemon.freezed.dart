// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Pokemon {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  List<PokemonTypes> get types => throw _privateConstructorUsedError;
  Sprites get sprites =>
      throw _privateConstructorUsedError; // required List<PokemonStat> stats,
  PokemonColor get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String description,
      int height,
      int weight,
      List<PokemonTypes> types,
      Sprites sprites,
      PokemonColor color});

  $SpritesCopyWith<$Res> get sprites;
  $PokemonColorCopyWith<$Res> get color;
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res> implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  final Pokemon _value;
  // ignore: unused_field
  final $Res Function(Pokemon) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? types = freezed,
    Object? sprites = freezed,
    Object? color = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypes>,
      sprites: sprites == freezed
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as PokemonColor,
    ));
  }

  @override
  $SpritesCopyWith<$Res> get sprites {
    return $SpritesCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value));
    });
  }

  @override
  $PokemonColorCopyWith<$Res> get color {
    return $PokemonColorCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value));
    });
  }
}

/// @nodoc
abstract class _$$_PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$_PokemonCopyWith(
          _$_Pokemon value, $Res Function(_$_Pokemon) then) =
      __$$_PokemonCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String description,
      int height,
      int weight,
      List<PokemonTypes> types,
      Sprites sprites,
      PokemonColor color});

  @override
  $SpritesCopyWith<$Res> get sprites;
  @override
  $PokemonColorCopyWith<$Res> get color;
}

/// @nodoc
class __$$_PokemonCopyWithImpl<$Res> extends _$PokemonCopyWithImpl<$Res>
    implements _$$_PokemonCopyWith<$Res> {
  __$$_PokemonCopyWithImpl(_$_Pokemon _value, $Res Function(_$_Pokemon) _then)
      : super(_value, (v) => _then(v as _$_Pokemon));

  @override
  _$_Pokemon get _value => super._value as _$_Pokemon;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? types = freezed,
    Object? sprites = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_Pokemon(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: types == freezed
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypes>,
      sprites: sprites == freezed
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as PokemonColor,
    ));
  }
}

/// @nodoc

class _$_Pokemon extends _Pokemon {
  const _$_Pokemon(
      {required this.id,
      required this.name,
      this.description = '',
      required this.height,
      required this.weight,
      final List<PokemonTypes> types = const <PokemonTypes>[],
      required this.sprites,
      required this.color})
      : _types = types,
        super._();

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  final int height;
  @override
  final int weight;
  final List<PokemonTypes> _types;
  @override
  @JsonKey()
  List<PokemonTypes> get types {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final Sprites sprites;
// required List<PokemonStat> stats,
  @override
  final PokemonColor color;

  @override
  String toString() {
    return 'Pokemon(id: $id, name: $name, description: $description, height: $height, weight: $weight, types: $types, sprites: $sprites, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pokemon &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other.sprites, sprites) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(sprites),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonCopyWith<_$_Pokemon> get copyWith =>
      __$$_PokemonCopyWithImpl<_$_Pokemon>(this, _$identity);
}

abstract class _Pokemon extends Pokemon {
  const factory _Pokemon(
      {required final int id,
      required final String name,
      final String description,
      required final int height,
      required final int weight,
      final List<PokemonTypes> types,
      required final Sprites sprites,
      required final PokemonColor color}) = _$_Pokemon;
  const _Pokemon._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get height;
  @override
  int get weight;
  @override
  List<PokemonTypes> get types;
  @override
  Sprites get sprites;
  @override // required List<PokemonStat> stats,
  PokemonColor get color;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonCopyWith<_$_Pokemon> get copyWith =>
      throw _privateConstructorUsedError;
}
