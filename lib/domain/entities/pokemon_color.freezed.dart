// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonColor _$PokemonColorFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'black':
      return _Black.fromJson(json);
    case 'blue':
      return _Blue.fromJson(json);
    case 'brown':
      return _Brown.fromJson(json);
    case 'gray':
      return _Gray.fromJson(json);
    case 'green':
      return _Green.fromJson(json);
    case 'pink':
      return _Pink.fromJson(json);
    case 'purple':
      return _Purple.fromJson(json);
    case 'red':
      return _Red.fromJson(json);
    case 'white':
      return _White.fromJson(json);
    case 'yellow':
      return _Yellow.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PokemonColor',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PokemonColor {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() black,
    required TResult Function() blue,
    required TResult Function() brown,
    required TResult Function() gray,
    required TResult Function() green,
    required TResult Function() pink,
    required TResult Function() purple,
    required TResult Function() red,
    required TResult Function() white,
    required TResult Function() yellow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Black value) black,
    required TResult Function(_Blue value) blue,
    required TResult Function(_Brown value) brown,
    required TResult Function(_Gray value) gray,
    required TResult Function(_Green value) green,
    required TResult Function(_Pink value) pink,
    required TResult Function(_Purple value) purple,
    required TResult Function(_Red value) red,
    required TResult Function(_White value) white,
    required TResult Function(_Yellow value) yellow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonColorCopyWith<$Res> {
  factory $PokemonColorCopyWith(
          PokemonColor value, $Res Function(PokemonColor) then) =
      _$PokemonColorCopyWithImpl<$Res>;
}

/// @nodoc
class _$PokemonColorCopyWithImpl<$Res> implements $PokemonColorCopyWith<$Res> {
  _$PokemonColorCopyWithImpl(this._value, this._then);

  final PokemonColor _value;
  // ignore: unused_field
  final $Res Function(PokemonColor) _then;
}

/// @nodoc
abstract class _$$_BlackCopyWith<$Res> {
  factory _$$_BlackCopyWith(_$_Black value, $Res Function(_$_Black) then) =
      __$$_BlackCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BlackCopyWithImpl<$Res> extends _$PokemonColorCopyWithImpl<$Res>
    implements _$$_BlackCopyWith<$Res> {
  __$$_BlackCopyWithImpl(_$_Black _value, $Res Function(_$_Black) _then)
      : super(_value, (v) => _then(v as _$_Black));

  @override
  _$_Black get _value => super._value as _$_Black;
}

/// @nodoc
@JsonSerializable()
class _$_Black extends _Black {
  const _$_Black({final String? $type})
      : $type = $type ?? 'black',
        super._();

  factory _$_Black.fromJson(Map<String, dynamic> json) =>
      _$$_BlackFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PokemonColor.black()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Black);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() black,
    required TResult Function() blue,
    required TResult Function() brown,
    required TResult Function() gray,
    required TResult Function() green,
    required TResult Function() pink,
    required TResult Function() purple,
    required TResult Function() red,
    required TResult Function() white,
    required TResult Function() yellow,
  }) {
    return black();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
  }) {
    return black?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
    required TResult orElse(),
  }) {
    if (black != null) {
      return black();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Black value) black,
    required TResult Function(_Blue value) blue,
    required TResult Function(_Brown value) brown,
    required TResult Function(_Gray value) gray,
    required TResult Function(_Green value) green,
    required TResult Function(_Pink value) pink,
    required TResult Function(_Purple value) purple,
    required TResult Function(_Red value) red,
    required TResult Function(_White value) white,
    required TResult Function(_Yellow value) yellow,
  }) {
    return black(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
  }) {
    return black?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
    required TResult orElse(),
  }) {
    if (black != null) {
      return black(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlackToJson(
      this,
    );
  }
}

abstract class _Black extends PokemonColor {
  const factory _Black() = _$_Black;
  const _Black._() : super._();

  factory _Black.fromJson(Map<String, dynamic> json) = _$_Black.fromJson;
}

/// @nodoc
abstract class _$$_BlueCopyWith<$Res> {
  factory _$$_BlueCopyWith(_$_Blue value, $Res Function(_$_Blue) then) =
      __$$_BlueCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BlueCopyWithImpl<$Res> extends _$PokemonColorCopyWithImpl<$Res>
    implements _$$_BlueCopyWith<$Res> {
  __$$_BlueCopyWithImpl(_$_Blue _value, $Res Function(_$_Blue) _then)
      : super(_value, (v) => _then(v as _$_Blue));

  @override
  _$_Blue get _value => super._value as _$_Blue;
}

/// @nodoc
@JsonSerializable()
class _$_Blue extends _Blue {
  const _$_Blue({final String? $type})
      : $type = $type ?? 'blue',
        super._();

  factory _$_Blue.fromJson(Map<String, dynamic> json) => _$$_BlueFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PokemonColor.blue()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Blue);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() black,
    required TResult Function() blue,
    required TResult Function() brown,
    required TResult Function() gray,
    required TResult Function() green,
    required TResult Function() pink,
    required TResult Function() purple,
    required TResult Function() red,
    required TResult Function() white,
    required TResult Function() yellow,
  }) {
    return blue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
  }) {
    return blue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
    required TResult orElse(),
  }) {
    if (blue != null) {
      return blue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Black value) black,
    required TResult Function(_Blue value) blue,
    required TResult Function(_Brown value) brown,
    required TResult Function(_Gray value) gray,
    required TResult Function(_Green value) green,
    required TResult Function(_Pink value) pink,
    required TResult Function(_Purple value) purple,
    required TResult Function(_Red value) red,
    required TResult Function(_White value) white,
    required TResult Function(_Yellow value) yellow,
  }) {
    return blue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
  }) {
    return blue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
    required TResult orElse(),
  }) {
    if (blue != null) {
      return blue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlueToJson(
      this,
    );
  }
}

abstract class _Blue extends PokemonColor {
  const factory _Blue() = _$_Blue;
  const _Blue._() : super._();

  factory _Blue.fromJson(Map<String, dynamic> json) = _$_Blue.fromJson;
}

/// @nodoc
abstract class _$$_BrownCopyWith<$Res> {
  factory _$$_BrownCopyWith(_$_Brown value, $Res Function(_$_Brown) then) =
      __$$_BrownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BrownCopyWithImpl<$Res> extends _$PokemonColorCopyWithImpl<$Res>
    implements _$$_BrownCopyWith<$Res> {
  __$$_BrownCopyWithImpl(_$_Brown _value, $Res Function(_$_Brown) _then)
      : super(_value, (v) => _then(v as _$_Brown));

  @override
  _$_Brown get _value => super._value as _$_Brown;
}

/// @nodoc
@JsonSerializable()
class _$_Brown extends _Brown {
  const _$_Brown({final String? $type})
      : $type = $type ?? 'brown',
        super._();

  factory _$_Brown.fromJson(Map<String, dynamic> json) =>
      _$$_BrownFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PokemonColor.brown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Brown);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() black,
    required TResult Function() blue,
    required TResult Function() brown,
    required TResult Function() gray,
    required TResult Function() green,
    required TResult Function() pink,
    required TResult Function() purple,
    required TResult Function() red,
    required TResult Function() white,
    required TResult Function() yellow,
  }) {
    return brown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
  }) {
    return brown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
    required TResult orElse(),
  }) {
    if (brown != null) {
      return brown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Black value) black,
    required TResult Function(_Blue value) blue,
    required TResult Function(_Brown value) brown,
    required TResult Function(_Gray value) gray,
    required TResult Function(_Green value) green,
    required TResult Function(_Pink value) pink,
    required TResult Function(_Purple value) purple,
    required TResult Function(_Red value) red,
    required TResult Function(_White value) white,
    required TResult Function(_Yellow value) yellow,
  }) {
    return brown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
  }) {
    return brown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
    required TResult orElse(),
  }) {
    if (brown != null) {
      return brown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrownToJson(
      this,
    );
  }
}

abstract class _Brown extends PokemonColor {
  const factory _Brown() = _$_Brown;
  const _Brown._() : super._();

  factory _Brown.fromJson(Map<String, dynamic> json) = _$_Brown.fromJson;
}

/// @nodoc
abstract class _$$_GrayCopyWith<$Res> {
  factory _$$_GrayCopyWith(_$_Gray value, $Res Function(_$_Gray) then) =
      __$$_GrayCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GrayCopyWithImpl<$Res> extends _$PokemonColorCopyWithImpl<$Res>
    implements _$$_GrayCopyWith<$Res> {
  __$$_GrayCopyWithImpl(_$_Gray _value, $Res Function(_$_Gray) _then)
      : super(_value, (v) => _then(v as _$_Gray));

  @override
  _$_Gray get _value => super._value as _$_Gray;
}

/// @nodoc
@JsonSerializable()
class _$_Gray extends _Gray {
  const _$_Gray({final String? $type})
      : $type = $type ?? 'gray',
        super._();

  factory _$_Gray.fromJson(Map<String, dynamic> json) => _$$_GrayFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PokemonColor.gray()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Gray);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() black,
    required TResult Function() blue,
    required TResult Function() brown,
    required TResult Function() gray,
    required TResult Function() green,
    required TResult Function() pink,
    required TResult Function() purple,
    required TResult Function() red,
    required TResult Function() white,
    required TResult Function() yellow,
  }) {
    return gray();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
  }) {
    return gray?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
    required TResult orElse(),
  }) {
    if (gray != null) {
      return gray();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Black value) black,
    required TResult Function(_Blue value) blue,
    required TResult Function(_Brown value) brown,
    required TResult Function(_Gray value) gray,
    required TResult Function(_Green value) green,
    required TResult Function(_Pink value) pink,
    required TResult Function(_Purple value) purple,
    required TResult Function(_Red value) red,
    required TResult Function(_White value) white,
    required TResult Function(_Yellow value) yellow,
  }) {
    return gray(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
  }) {
    return gray?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
    required TResult orElse(),
  }) {
    if (gray != null) {
      return gray(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_GrayToJson(
      this,
    );
  }
}

abstract class _Gray extends PokemonColor {
  const factory _Gray() = _$_Gray;
  const _Gray._() : super._();

  factory _Gray.fromJson(Map<String, dynamic> json) = _$_Gray.fromJson;
}

/// @nodoc
abstract class _$$_GreenCopyWith<$Res> {
  factory _$$_GreenCopyWith(_$_Green value, $Res Function(_$_Green) then) =
      __$$_GreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GreenCopyWithImpl<$Res> extends _$PokemonColorCopyWithImpl<$Res>
    implements _$$_GreenCopyWith<$Res> {
  __$$_GreenCopyWithImpl(_$_Green _value, $Res Function(_$_Green) _then)
      : super(_value, (v) => _then(v as _$_Green));

  @override
  _$_Green get _value => super._value as _$_Green;
}

/// @nodoc
@JsonSerializable()
class _$_Green extends _Green {
  const _$_Green({final String? $type})
      : $type = $type ?? 'green',
        super._();

  factory _$_Green.fromJson(Map<String, dynamic> json) =>
      _$$_GreenFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PokemonColor.green()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Green);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() black,
    required TResult Function() blue,
    required TResult Function() brown,
    required TResult Function() gray,
    required TResult Function() green,
    required TResult Function() pink,
    required TResult Function() purple,
    required TResult Function() red,
    required TResult Function() white,
    required TResult Function() yellow,
  }) {
    return green();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
  }) {
    return green?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
    required TResult orElse(),
  }) {
    if (green != null) {
      return green();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Black value) black,
    required TResult Function(_Blue value) blue,
    required TResult Function(_Brown value) brown,
    required TResult Function(_Gray value) gray,
    required TResult Function(_Green value) green,
    required TResult Function(_Pink value) pink,
    required TResult Function(_Purple value) purple,
    required TResult Function(_Red value) red,
    required TResult Function(_White value) white,
    required TResult Function(_Yellow value) yellow,
  }) {
    return green(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
  }) {
    return green?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
    required TResult orElse(),
  }) {
    if (green != null) {
      return green(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_GreenToJson(
      this,
    );
  }
}

abstract class _Green extends PokemonColor {
  const factory _Green() = _$_Green;
  const _Green._() : super._();

  factory _Green.fromJson(Map<String, dynamic> json) = _$_Green.fromJson;
}

/// @nodoc
abstract class _$$_PinkCopyWith<$Res> {
  factory _$$_PinkCopyWith(_$_Pink value, $Res Function(_$_Pink) then) =
      __$$_PinkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PinkCopyWithImpl<$Res> extends _$PokemonColorCopyWithImpl<$Res>
    implements _$$_PinkCopyWith<$Res> {
  __$$_PinkCopyWithImpl(_$_Pink _value, $Res Function(_$_Pink) _then)
      : super(_value, (v) => _then(v as _$_Pink));

  @override
  _$_Pink get _value => super._value as _$_Pink;
}

/// @nodoc
@JsonSerializable()
class _$_Pink extends _Pink {
  const _$_Pink({final String? $type})
      : $type = $type ?? 'pink',
        super._();

  factory _$_Pink.fromJson(Map<String, dynamic> json) => _$$_PinkFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PokemonColor.pink()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Pink);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() black,
    required TResult Function() blue,
    required TResult Function() brown,
    required TResult Function() gray,
    required TResult Function() green,
    required TResult Function() pink,
    required TResult Function() purple,
    required TResult Function() red,
    required TResult Function() white,
    required TResult Function() yellow,
  }) {
    return pink();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
  }) {
    return pink?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
    required TResult orElse(),
  }) {
    if (pink != null) {
      return pink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Black value) black,
    required TResult Function(_Blue value) blue,
    required TResult Function(_Brown value) brown,
    required TResult Function(_Gray value) gray,
    required TResult Function(_Green value) green,
    required TResult Function(_Pink value) pink,
    required TResult Function(_Purple value) purple,
    required TResult Function(_Red value) red,
    required TResult Function(_White value) white,
    required TResult Function(_Yellow value) yellow,
  }) {
    return pink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
  }) {
    return pink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
    required TResult orElse(),
  }) {
    if (pink != null) {
      return pink(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PinkToJson(
      this,
    );
  }
}

abstract class _Pink extends PokemonColor {
  const factory _Pink() = _$_Pink;
  const _Pink._() : super._();

  factory _Pink.fromJson(Map<String, dynamic> json) = _$_Pink.fromJson;
}

/// @nodoc
abstract class _$$_PurpleCopyWith<$Res> {
  factory _$$_PurpleCopyWith(_$_Purple value, $Res Function(_$_Purple) then) =
      __$$_PurpleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PurpleCopyWithImpl<$Res> extends _$PokemonColorCopyWithImpl<$Res>
    implements _$$_PurpleCopyWith<$Res> {
  __$$_PurpleCopyWithImpl(_$_Purple _value, $Res Function(_$_Purple) _then)
      : super(_value, (v) => _then(v as _$_Purple));

  @override
  _$_Purple get _value => super._value as _$_Purple;
}

/// @nodoc
@JsonSerializable()
class _$_Purple extends _Purple {
  const _$_Purple({final String? $type})
      : $type = $type ?? 'purple',
        super._();

  factory _$_Purple.fromJson(Map<String, dynamic> json) =>
      _$$_PurpleFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PokemonColor.purple()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Purple);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() black,
    required TResult Function() blue,
    required TResult Function() brown,
    required TResult Function() gray,
    required TResult Function() green,
    required TResult Function() pink,
    required TResult Function() purple,
    required TResult Function() red,
    required TResult Function() white,
    required TResult Function() yellow,
  }) {
    return purple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
  }) {
    return purple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
    required TResult orElse(),
  }) {
    if (purple != null) {
      return purple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Black value) black,
    required TResult Function(_Blue value) blue,
    required TResult Function(_Brown value) brown,
    required TResult Function(_Gray value) gray,
    required TResult Function(_Green value) green,
    required TResult Function(_Pink value) pink,
    required TResult Function(_Purple value) purple,
    required TResult Function(_Red value) red,
    required TResult Function(_White value) white,
    required TResult Function(_Yellow value) yellow,
  }) {
    return purple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
  }) {
    return purple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
    required TResult orElse(),
  }) {
    if (purple != null) {
      return purple(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurpleToJson(
      this,
    );
  }
}

abstract class _Purple extends PokemonColor {
  const factory _Purple() = _$_Purple;
  const _Purple._() : super._();

  factory _Purple.fromJson(Map<String, dynamic> json) = _$_Purple.fromJson;
}

/// @nodoc
abstract class _$$_RedCopyWith<$Res> {
  factory _$$_RedCopyWith(_$_Red value, $Res Function(_$_Red) then) =
      __$$_RedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RedCopyWithImpl<$Res> extends _$PokemonColorCopyWithImpl<$Res>
    implements _$$_RedCopyWith<$Res> {
  __$$_RedCopyWithImpl(_$_Red _value, $Res Function(_$_Red) _then)
      : super(_value, (v) => _then(v as _$_Red));

  @override
  _$_Red get _value => super._value as _$_Red;
}

/// @nodoc
@JsonSerializable()
class _$_Red extends _Red {
  const _$_Red({final String? $type})
      : $type = $type ?? 'red',
        super._();

  factory _$_Red.fromJson(Map<String, dynamic> json) => _$$_RedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PokemonColor.red()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Red);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() black,
    required TResult Function() blue,
    required TResult Function() brown,
    required TResult Function() gray,
    required TResult Function() green,
    required TResult Function() pink,
    required TResult Function() purple,
    required TResult Function() red,
    required TResult Function() white,
    required TResult Function() yellow,
  }) {
    return red();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
  }) {
    return red?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
    required TResult orElse(),
  }) {
    if (red != null) {
      return red();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Black value) black,
    required TResult Function(_Blue value) blue,
    required TResult Function(_Brown value) brown,
    required TResult Function(_Gray value) gray,
    required TResult Function(_Green value) green,
    required TResult Function(_Pink value) pink,
    required TResult Function(_Purple value) purple,
    required TResult Function(_Red value) red,
    required TResult Function(_White value) white,
    required TResult Function(_Yellow value) yellow,
  }) {
    return red(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
  }) {
    return red?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
    required TResult orElse(),
  }) {
    if (red != null) {
      return red(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_RedToJson(
      this,
    );
  }
}

abstract class _Red extends PokemonColor {
  const factory _Red() = _$_Red;
  const _Red._() : super._();

  factory _Red.fromJson(Map<String, dynamic> json) = _$_Red.fromJson;
}

/// @nodoc
abstract class _$$_WhiteCopyWith<$Res> {
  factory _$$_WhiteCopyWith(_$_White value, $Res Function(_$_White) then) =
      __$$_WhiteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WhiteCopyWithImpl<$Res> extends _$PokemonColorCopyWithImpl<$Res>
    implements _$$_WhiteCopyWith<$Res> {
  __$$_WhiteCopyWithImpl(_$_White _value, $Res Function(_$_White) _then)
      : super(_value, (v) => _then(v as _$_White));

  @override
  _$_White get _value => super._value as _$_White;
}

/// @nodoc
@JsonSerializable()
class _$_White extends _White {
  const _$_White({final String? $type})
      : $type = $type ?? 'white',
        super._();

  factory _$_White.fromJson(Map<String, dynamic> json) =>
      _$$_WhiteFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PokemonColor.white()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_White);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() black,
    required TResult Function() blue,
    required TResult Function() brown,
    required TResult Function() gray,
    required TResult Function() green,
    required TResult Function() pink,
    required TResult Function() purple,
    required TResult Function() red,
    required TResult Function() white,
    required TResult Function() yellow,
  }) {
    return white();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
  }) {
    return white?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
    required TResult orElse(),
  }) {
    if (white != null) {
      return white();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Black value) black,
    required TResult Function(_Blue value) blue,
    required TResult Function(_Brown value) brown,
    required TResult Function(_Gray value) gray,
    required TResult Function(_Green value) green,
    required TResult Function(_Pink value) pink,
    required TResult Function(_Purple value) purple,
    required TResult Function(_Red value) red,
    required TResult Function(_White value) white,
    required TResult Function(_Yellow value) yellow,
  }) {
    return white(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
  }) {
    return white?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
    required TResult orElse(),
  }) {
    if (white != null) {
      return white(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WhiteToJson(
      this,
    );
  }
}

abstract class _White extends PokemonColor {
  const factory _White() = _$_White;
  const _White._() : super._();

  factory _White.fromJson(Map<String, dynamic> json) = _$_White.fromJson;
}

/// @nodoc
abstract class _$$_YellowCopyWith<$Res> {
  factory _$$_YellowCopyWith(_$_Yellow value, $Res Function(_$_Yellow) then) =
      __$$_YellowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_YellowCopyWithImpl<$Res> extends _$PokemonColorCopyWithImpl<$Res>
    implements _$$_YellowCopyWith<$Res> {
  __$$_YellowCopyWithImpl(_$_Yellow _value, $Res Function(_$_Yellow) _then)
      : super(_value, (v) => _then(v as _$_Yellow));

  @override
  _$_Yellow get _value => super._value as _$_Yellow;
}

/// @nodoc
@JsonSerializable()
class _$_Yellow extends _Yellow {
  const _$_Yellow({final String? $type})
      : $type = $type ?? 'yellow',
        super._();

  factory _$_Yellow.fromJson(Map<String, dynamic> json) =>
      _$$_YellowFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PokemonColor.yellow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Yellow);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() black,
    required TResult Function() blue,
    required TResult Function() brown,
    required TResult Function() gray,
    required TResult Function() green,
    required TResult Function() pink,
    required TResult Function() purple,
    required TResult Function() red,
    required TResult Function() white,
    required TResult Function() yellow,
  }) {
    return yellow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
  }) {
    return yellow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? black,
    TResult Function()? blue,
    TResult Function()? brown,
    TResult Function()? gray,
    TResult Function()? green,
    TResult Function()? pink,
    TResult Function()? purple,
    TResult Function()? red,
    TResult Function()? white,
    TResult Function()? yellow,
    required TResult orElse(),
  }) {
    if (yellow != null) {
      return yellow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Black value) black,
    required TResult Function(_Blue value) blue,
    required TResult Function(_Brown value) brown,
    required TResult Function(_Gray value) gray,
    required TResult Function(_Green value) green,
    required TResult Function(_Pink value) pink,
    required TResult Function(_Purple value) purple,
    required TResult Function(_Red value) red,
    required TResult Function(_White value) white,
    required TResult Function(_Yellow value) yellow,
  }) {
    return yellow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
  }) {
    return yellow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Black value)? black,
    TResult Function(_Blue value)? blue,
    TResult Function(_Brown value)? brown,
    TResult Function(_Gray value)? gray,
    TResult Function(_Green value)? green,
    TResult Function(_Pink value)? pink,
    TResult Function(_Purple value)? purple,
    TResult Function(_Red value)? red,
    TResult Function(_White value)? white,
    TResult Function(_Yellow value)? yellow,
    required TResult orElse(),
  }) {
    if (yellow != null) {
      return yellow(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_YellowToJson(
      this,
    );
  }
}

abstract class _Yellow extends PokemonColor {
  const factory _Yellow() = _$_Yellow;
  const _Yellow._() : super._();

  factory _Yellow.fromJson(Map<String, dynamic> json) = _$_Yellow.fromJson;
}
