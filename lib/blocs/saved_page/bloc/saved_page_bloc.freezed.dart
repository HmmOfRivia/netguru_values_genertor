// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'saved_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$SavedPageEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteItem(int id),
    @required Result loadAllQuotes(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteItem(int id),
    Result loadAllQuotes(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteItem(DeleteItem value),
    @required Result loadAllQuotes(LoadAllQuotes value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteItem(DeleteItem value),
    Result loadAllQuotes(LoadAllQuotes value),
    @required Result orElse(),
  });
}

class _$SavedPageEventTearOff {
  const _$SavedPageEventTearOff();

  DeleteItem deleteItem(int id) {
    return DeleteItem(
      id,
    );
  }

  LoadAllQuotes loadAllQuotes() {
    return LoadAllQuotes();
  }
}

const $SavedPageEvent = _$SavedPageEventTearOff();

class _$DeleteItem implements DeleteItem {
  _$DeleteItem(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'SavedPageEvent.deleteItem(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$DeleteItem copyWith({
    Object id = freezed,
  }) {
    return _$DeleteItem(
      id == freezed ? this.id : id as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteItem(int id),
    @required Result loadAllQuotes(),
  }) {
    assert(deleteItem != null);
    assert(loadAllQuotes != null);
    return deleteItem(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteItem(int id),
    Result loadAllQuotes(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteItem != null) {
      return deleteItem(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteItem(DeleteItem value),
    @required Result loadAllQuotes(LoadAllQuotes value),
  }) {
    assert(deleteItem != null);
    assert(loadAllQuotes != null);
    return deleteItem(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteItem(DeleteItem value),
    Result loadAllQuotes(LoadAllQuotes value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteItem != null) {
      return deleteItem(this);
    }
    return orElse();
  }
}

abstract class DeleteItem implements SavedPageEvent {
  factory DeleteItem(int id) = _$DeleteItem;

  int get id;

  DeleteItem copyWith({int id});
}

class _$LoadAllQuotes implements LoadAllQuotes {
  _$LoadAllQuotes();

  @override
  String toString() {
    return 'SavedPageEvent.loadAllQuotes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadAllQuotes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteItem(int id),
    @required Result loadAllQuotes(),
  }) {
    assert(deleteItem != null);
    assert(loadAllQuotes != null);
    return loadAllQuotes();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteItem(int id),
    Result loadAllQuotes(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadAllQuotes != null) {
      return loadAllQuotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteItem(DeleteItem value),
    @required Result loadAllQuotes(LoadAllQuotes value),
  }) {
    assert(deleteItem != null);
    assert(loadAllQuotes != null);
    return loadAllQuotes(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteItem(DeleteItem value),
    Result loadAllQuotes(LoadAllQuotes value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadAllQuotes != null) {
      return loadAllQuotes(this);
    }
    return orElse();
  }
}

abstract class LoadAllQuotes implements SavedPageEvent {
  factory LoadAllQuotes() = _$LoadAllQuotes;
}

mixin _$SavedPageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showAllQuotes(List<Quote> quotes),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showAllQuotes(List<Quote> quotes),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showAllQuotes(ShowAllQuotes value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showAllQuotes(ShowAllQuotes value),
    @required Result orElse(),
  });
}

class _$SavedPageStateTearOff {
  const _$SavedPageStateTearOff();

  Initial initial() {
    return Initial();
  }

  ShowAllQuotes showAllQuotes(List<Quote> quotes) {
    return ShowAllQuotes(
      quotes,
    );
  }
}

const $SavedPageState = _$SavedPageStateTearOff();

class _$Initial implements Initial {
  _$Initial();

  @override
  String toString() {
    return 'SavedPageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showAllQuotes(List<Quote> quotes),
  }) {
    assert(initial != null);
    assert(showAllQuotes != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showAllQuotes(List<Quote> quotes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showAllQuotes(ShowAllQuotes value),
  }) {
    assert(initial != null);
    assert(showAllQuotes != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showAllQuotes(ShowAllQuotes value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SavedPageState {
  factory Initial() = _$Initial;
}

class _$ShowAllQuotes implements ShowAllQuotes {
  _$ShowAllQuotes(this.quotes) : assert(quotes != null);

  @override
  final List<Quote> quotes;

  @override
  String toString() {
    return 'SavedPageState.showAllQuotes(quotes: $quotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowAllQuotes &&
            (identical(other.quotes, quotes) ||
                const DeepCollectionEquality().equals(other.quotes, quotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quotes);

  @override
  _$ShowAllQuotes copyWith({
    Object quotes = freezed,
  }) {
    return _$ShowAllQuotes(
      quotes == freezed ? this.quotes : quotes as List<Quote>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showAllQuotes(List<Quote> quotes),
  }) {
    assert(initial != null);
    assert(showAllQuotes != null);
    return showAllQuotes(quotes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showAllQuotes(List<Quote> quotes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showAllQuotes != null) {
      return showAllQuotes(quotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showAllQuotes(ShowAllQuotes value),
  }) {
    assert(initial != null);
    assert(showAllQuotes != null);
    return showAllQuotes(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showAllQuotes(ShowAllQuotes value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showAllQuotes != null) {
      return showAllQuotes(this);
    }
    return orElse();
  }
}

abstract class ShowAllQuotes implements SavedPageState {
  factory ShowAllQuotes(List<Quote> quotes) = _$ShowAllQuotes;

  List<Quote> get quotes;

  ShowAllQuotes copyWith({List<Quote> quotes});
}
