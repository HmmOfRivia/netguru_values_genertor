// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'Quote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$Quote {
  int get id;
  String get value;
  bool get isFavourite;

  Quote copyWith({int id, String value, bool isFavourite});
}

class _$QuoteTearOff {
  const _$QuoteTearOff();

  _Quote call({int id, @required String value, @required bool isFavourite}) {
    return _Quote(
      id: id,
      value: value,
      isFavourite: isFavourite,
    );
  }
}

const $Quote = _$QuoteTearOff();

class _$_Quote implements _Quote {
  const _$_Quote({this.id, @required this.value, @required this.isFavourite})
      : assert(value != null),
        assert(isFavourite != null);

  @override
  final int id;
  @override
  final String value;
  @override
  final bool isFavourite;

  @override
  String toString() {
    return 'Quote(id: $id, value: $value, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Quote &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.isFavourite, isFavourite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavourite, isFavourite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(isFavourite);

  @override
  _$_Quote copyWith({
    Object id = freezed,
    Object value = freezed,
    Object isFavourite = freezed,
  }) {
    return _$_Quote(
      id: id == freezed ? this.id : id as int,
      value: value == freezed ? this.value : value as String,
      isFavourite:
          isFavourite == freezed ? this.isFavourite : isFavourite as bool,
    );
  }
}

abstract class _Quote implements Quote {
  const factory _Quote(
      {int id, @required String value, @required bool isFavourite}) = _$_Quote;

  @override
  int get id;
  @override
  String get value;
  @override
  bool get isFavourite;

  @override
  _Quote copyWith({int id, String value, bool isFavourite});
}
