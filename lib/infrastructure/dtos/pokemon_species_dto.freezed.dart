// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_species_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonSpeciesDTO _$PokemonSpeciesDTOFromJson(Map<String, dynamic> json) {
  return _PokemonSpeciesDTO.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpeciesDTO {
  String get evolution_chain_url => throw _privateConstructorUsedError;
  int get base_happiness => throw _privateConstructorUsedError;
  int get capture_rate => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: PokemonSpeciesDTO.colorFromJSON,
      toJson: PokemonSpeciesDTO.colorToJSON)
  String get color => throw _privateConstructorUsedError;
  List<PokemonFlavorTextDTO> get flavor_text_entries =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpeciesDTOCopyWith<PokemonSpeciesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesDTOCopyWith<$Res> {
  factory $PokemonSpeciesDTOCopyWith(
          PokemonSpeciesDTO value, $Res Function(PokemonSpeciesDTO) then) =
      _$PokemonSpeciesDTOCopyWithImpl<$Res>;
  $Res call(
      {String evolution_chain_url,
      int base_happiness,
      int capture_rate,
      @JsonKey(fromJson: PokemonSpeciesDTO.colorFromJSON, toJson: PokemonSpeciesDTO.colorToJSON)
          String color,
      List<PokemonFlavorTextDTO> flavor_text_entries});
}

/// @nodoc
class _$PokemonSpeciesDTOCopyWithImpl<$Res>
    implements $PokemonSpeciesDTOCopyWith<$Res> {
  _$PokemonSpeciesDTOCopyWithImpl(this._value, this._then);

  final PokemonSpeciesDTO _value;
  // ignore: unused_field
  final $Res Function(PokemonSpeciesDTO) _then;

  @override
  $Res call({
    Object? evolution_chain_url = freezed,
    Object? base_happiness = freezed,
    Object? capture_rate = freezed,
    Object? color = freezed,
    Object? flavor_text_entries = freezed,
  }) {
    return _then(_value.copyWith(
      evolution_chain_url: evolution_chain_url == freezed
          ? _value.evolution_chain_url
          : evolution_chain_url // ignore: cast_nullable_to_non_nullable
              as String,
      base_happiness: base_happiness == freezed
          ? _value.base_happiness
          : base_happiness // ignore: cast_nullable_to_non_nullable
              as int,
      capture_rate: capture_rate == freezed
          ? _value.capture_rate
          : capture_rate // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      flavor_text_entries: flavor_text_entries == freezed
          ? _value.flavor_text_entries
          : flavor_text_entries // ignore: cast_nullable_to_non_nullable
              as List<PokemonFlavorTextDTO>,
    ));
  }
}

/// @nodoc
abstract class _$$_PokemonSpeciesDTOCopyWith<$Res>
    implements $PokemonSpeciesDTOCopyWith<$Res> {
  factory _$$_PokemonSpeciesDTOCopyWith(_$_PokemonSpeciesDTO value,
          $Res Function(_$_PokemonSpeciesDTO) then) =
      __$$_PokemonSpeciesDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String evolution_chain_url,
      int base_happiness,
      int capture_rate,
      @JsonKey(fromJson: PokemonSpeciesDTO.colorFromJSON, toJson: PokemonSpeciesDTO.colorToJSON)
          String color,
      List<PokemonFlavorTextDTO> flavor_text_entries});
}

/// @nodoc
class __$$_PokemonSpeciesDTOCopyWithImpl<$Res>
    extends _$PokemonSpeciesDTOCopyWithImpl<$Res>
    implements _$$_PokemonSpeciesDTOCopyWith<$Res> {
  __$$_PokemonSpeciesDTOCopyWithImpl(
      _$_PokemonSpeciesDTO _value, $Res Function(_$_PokemonSpeciesDTO) _then)
      : super(_value, (v) => _then(v as _$_PokemonSpeciesDTO));

  @override
  _$_PokemonSpeciesDTO get _value => super._value as _$_PokemonSpeciesDTO;

  @override
  $Res call({
    Object? evolution_chain_url = freezed,
    Object? base_happiness = freezed,
    Object? capture_rate = freezed,
    Object? color = freezed,
    Object? flavor_text_entries = freezed,
  }) {
    return _then(_$_PokemonSpeciesDTO(
      evolution_chain_url: evolution_chain_url == freezed
          ? _value.evolution_chain_url
          : evolution_chain_url // ignore: cast_nullable_to_non_nullable
              as String,
      base_happiness: base_happiness == freezed
          ? _value.base_happiness
          : base_happiness // ignore: cast_nullable_to_non_nullable
              as int,
      capture_rate: capture_rate == freezed
          ? _value.capture_rate
          : capture_rate // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      flavor_text_entries: flavor_text_entries == freezed
          ? _value._flavor_text_entries
          : flavor_text_entries // ignore: cast_nullable_to_non_nullable
              as List<PokemonFlavorTextDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonSpeciesDTO extends _PokemonSpeciesDTO {
  const _$_PokemonSpeciesDTO(
      {required this.evolution_chain_url,
      required this.base_happiness,
      required this.capture_rate,
      @JsonKey(fromJson: PokemonSpeciesDTO.colorFromJSON, toJson: PokemonSpeciesDTO.colorToJSON)
          required this.color,
      required final List<PokemonFlavorTextDTO> flavor_text_entries})
      : _flavor_text_entries = flavor_text_entries,
        super._();

  factory _$_PokemonSpeciesDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonSpeciesDTOFromJson(json);

  @override
  final String evolution_chain_url;
  @override
  final int base_happiness;
  @override
  final int capture_rate;
  @override
  @JsonKey(
      fromJson: PokemonSpeciesDTO.colorFromJSON,
      toJson: PokemonSpeciesDTO.colorToJSON)
  final String color;
  final List<PokemonFlavorTextDTO> _flavor_text_entries;
  @override
  List<PokemonFlavorTextDTO> get flavor_text_entries {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flavor_text_entries);
  }

  @override
  String toString() {
    return 'PokemonSpeciesDTO(evolution_chain_url: $evolution_chain_url, base_happiness: $base_happiness, capture_rate: $capture_rate, color: $color, flavor_text_entries: $flavor_text_entries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonSpeciesDTO &&
            const DeepCollectionEquality()
                .equals(other.evolution_chain_url, evolution_chain_url) &&
            const DeepCollectionEquality()
                .equals(other.base_happiness, base_happiness) &&
            const DeepCollectionEquality()
                .equals(other.capture_rate, capture_rate) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other._flavor_text_entries, _flavor_text_entries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(evolution_chain_url),
      const DeepCollectionEquality().hash(base_happiness),
      const DeepCollectionEquality().hash(capture_rate),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(_flavor_text_entries));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonSpeciesDTOCopyWith<_$_PokemonSpeciesDTO> get copyWith =>
      __$$_PokemonSpeciesDTOCopyWithImpl<_$_PokemonSpeciesDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonSpeciesDTOToJson(
      this,
    );
  }
}

abstract class _PokemonSpeciesDTO extends PokemonSpeciesDTO {
  const factory _PokemonSpeciesDTO(
      {required final String evolution_chain_url,
      required final int base_happiness,
      required final int capture_rate,
      @JsonKey(fromJson: PokemonSpeciesDTO.colorFromJSON, toJson: PokemonSpeciesDTO.colorToJSON)
          required final String color,
      required final List<PokemonFlavorTextDTO>
          flavor_text_entries}) = _$_PokemonSpeciesDTO;
  const _PokemonSpeciesDTO._() : super._();

  factory _PokemonSpeciesDTO.fromJson(Map<String, dynamic> json) =
      _$_PokemonSpeciesDTO.fromJson;

  @override
  String get evolution_chain_url;
  @override
  int get base_happiness;
  @override
  int get capture_rate;
  @override
  @JsonKey(
      fromJson: PokemonSpeciesDTO.colorFromJSON,
      toJson: PokemonSpeciesDTO.colorToJSON)
  String get color;
  @override
  List<PokemonFlavorTextDTO> get flavor_text_entries;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonSpeciesDTOCopyWith<_$_PokemonSpeciesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
