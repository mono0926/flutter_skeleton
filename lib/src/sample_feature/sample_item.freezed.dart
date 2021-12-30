// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sample_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SampleItemTearOff {
  const _$SampleItemTearOff();

  _SampleItem call(int id) {
    return _SampleItem(
      id,
    );
  }
}

/// @nodoc
const $SampleItem = _$SampleItemTearOff();

/// @nodoc
mixin _$SampleItem {
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleItemCopyWith<SampleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleItemCopyWith<$Res> {
  factory $SampleItemCopyWith(
          SampleItem value, $Res Function(SampleItem) then) =
      _$SampleItemCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$SampleItemCopyWithImpl<$Res> implements $SampleItemCopyWith<$Res> {
  _$SampleItemCopyWithImpl(this._value, this._then);

  final SampleItem _value;
  // ignore: unused_field
  final $Res Function(SampleItem) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SampleItemCopyWith<$Res> implements $SampleItemCopyWith<$Res> {
  factory _$SampleItemCopyWith(
          _SampleItem value, $Res Function(_SampleItem) then) =
      __$SampleItemCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$SampleItemCopyWithImpl<$Res> extends _$SampleItemCopyWithImpl<$Res>
    implements _$SampleItemCopyWith<$Res> {
  __$SampleItemCopyWithImpl(
      _SampleItem _value, $Res Function(_SampleItem) _then)
      : super(_value, (v) => _then(v as _SampleItem));

  @override
  _SampleItem get _value => super._value as _SampleItem;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_SampleItem(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SampleItem with DiagnosticableTreeMixin implements _SampleItem {
  const _$_SampleItem(this.id);

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SampleItem(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SampleItem'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SampleItem &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$SampleItemCopyWith<_SampleItem> get copyWith =>
      __$SampleItemCopyWithImpl<_SampleItem>(this, _$identity);
}

abstract class _SampleItem implements SampleItem {
  const factory _SampleItem(int id) = _$_SampleItem;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$SampleItemCopyWith<_SampleItem> get copyWith =>
      throw _privateConstructorUsedError;
}
