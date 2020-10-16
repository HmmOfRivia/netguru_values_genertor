// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'favourites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$FavouritesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteItemFromFavourites(Quote quote),
    @required Result loadFavourites(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteItemFromFavourites(Quote quote),
    Result loadFavourites(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteItemFromFavourites(DeleteItemFromFavourites value),
    @required Result loadFavourites(LoadFavourites value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteItemFromFavourites(DeleteItemFromFavourites value),
    Result loadFavourites(LoadFavourites value),
    @required Result orElse(),
  });
}

class _$FavouritesEventTearOff {
  const _$FavouritesEventTearOff();

  DeleteItemFromFavourites deleteItemFromFavourites(Quote quote) {
    return DeleteItemFromFavourites(
      quote,
    );
  }

  LoadFavourites loadFavourites() {
    return LoadFavourites();
  }
}

const $FavouritesEvent = _$FavouritesEventTearOff();

class _$DeleteItemFromFavourites implements DeleteItemFromFavourites {
  _$DeleteItemFromFavourites(this.quote) : assert(quote != null);

  @override
  final Quote quote;

  @override
  String toString() {
    return 'FavouritesEvent.deleteItemFromFavourites(quote: $quote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteItemFromFavourites &&
            (identical(other.quote, quote) ||
                const DeepCollectionEquality().equals(other.quote, quote)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quote);

  @override
  _$DeleteItemFromFavourites copyWith({
    Object quote = freezed,
  }) {
    return _$DeleteItemFromFavourites(
      quote == freezed ? this.quote : quote as Quote,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteItemFromFavourites(Quote quote),
    @required Result loadFavourites(),
  }) {
    assert(deleteItemFromFavourites != null);
    assert(loadFavourites != null);
    return deleteItemFromFavourites(quote);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteItemFromFavourites(Quote quote),
    Result loadFavourites(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteItemFromFavourites != null) {
      return deleteItemFromFavourites(quote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteItemFromFavourites(DeleteItemFromFavourites value),
    @required Result loadFavourites(LoadFavourites value),
  }) {
    assert(deleteItemFromFavourites != null);
    assert(loadFavourites != null);
    return deleteItemFromFavourites(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteItemFromFavourites(DeleteItemFromFavourites value),
    Result loadFavourites(LoadFavourites value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteItemFromFavourites != null) {
      return deleteItemFromFavourites(this);
    }
    return orElse();
  }
}

abstract class DeleteItemFromFavourites implements FavouritesEvent {
  factory DeleteItemFromFavourites(Quote quote) = _$DeleteItemFromFavourites;

  Quote get quote;

  DeleteItemFromFavourites copyWith({Quote quote});
}

class _$LoadFavourites implements LoadFavourites {
  _$LoadFavourites();

  @override
  String toString() {
    return 'FavouritesEvent.loadFavourites()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadFavourites);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteItemFromFavourites(Quote quote),
    @required Result loadFavourites(),
  }) {
    assert(deleteItemFromFavourites != null);
    assert(loadFavourites != null);
    return loadFavourites();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteItemFromFavourites(Quote quote),
    Result loadFavourites(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFavourites != null) {
      return loadFavourites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteItemFromFavourites(DeleteItemFromFavourites value),
    @required Result loadFavourites(LoadFavourites value),
  }) {
    assert(deleteItemFromFavourites != null);
    assert(loadFavourites != null);
    return loadFavourites(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteItemFromFavourites(DeleteItemFromFavourites value),
    Result loadFavourites(LoadFavourites value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFavourites != null) {
      return loadFavourites(this);
    }
    return orElse();
  }
}

abstract class LoadFavourites implements FavouritesEvent {
  factory LoadFavourites() = _$LoadFavourites;
}

mixin _$FavouritesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showFavourites(List<Quote> quotes),
    @required Result nothingToShow(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showFavourites(List<Quote> quotes),
    Result nothingToShow(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showFavourites(ShowFavourites value),
    @required Result nothingToShow(NothingToShow value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showFavourites(ShowFavourites value),
    Result nothingToShow(NothingToShow value),
    @required Result orElse(),
  });
}

class _$FavouritesStateTearOff {
  const _$FavouritesStateTearOff();

  Initial initial() {
    return Initial();
  }

  ShowFavourites showFavourites(List<Quote> quotes) {
    return ShowFavourites(
      quotes,
    );
  }

  NothingToShow nothingToShow() {
    return NothingToShow();
  }
}

const $FavouritesState = _$FavouritesStateTearOff();

class _$Initial implements Initial {
  _$Initial();

  @override
  String toString() {
    return 'FavouritesState.initial()';
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
    @required Result showFavourites(List<Quote> quotes),
    @required Result nothingToShow(),
  }) {
    assert(initial != null);
    assert(showFavourites != null);
    assert(nothingToShow != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showFavourites(List<Quote> quotes),
    Result nothingToShow(),
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
    @required Result showFavourites(ShowFavourites value),
    @required Result nothingToShow(NothingToShow value),
  }) {
    assert(initial != null);
    assert(showFavourites != null);
    assert(nothingToShow != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showFavourites(ShowFavourites value),
    Result nothingToShow(NothingToShow value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FavouritesState {
  factory Initial() = _$Initial;
}

class _$ShowFavourites implements ShowFavourites {
  _$ShowFavourites(this.quotes) : assert(quotes != null);

  @override
  final List<Quote> quotes;

  @override
  String toString() {
    return 'FavouritesState.showFavourites(quotes: $quotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowFavourites &&
            (identical(other.quotes, quotes) ||
                const DeepCollectionEquality().equals(other.quotes, quotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quotes);

  @override
  _$ShowFavourites copyWith({
    Object quotes = freezed,
  }) {
    return _$ShowFavourites(
      quotes == freezed ? this.quotes : quotes as List<Quote>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showFavourites(List<Quote> quotes),
    @required Result nothingToShow(),
  }) {
    assert(initial != null);
    assert(showFavourites != null);
    assert(nothingToShow != null);
    return showFavourites(quotes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showFavourites(List<Quote> quotes),
    Result nothingToShow(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showFavourites != null) {
      return showFavourites(quotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showFavourites(ShowFavourites value),
    @required Result nothingToShow(NothingToShow value),
  }) {
    assert(initial != null);
    assert(showFavourites != null);
    assert(nothingToShow != null);
    return showFavourites(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showFavourites(ShowFavourites value),
    Result nothingToShow(NothingToShow value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showFavourites != null) {
      return showFavourites(this);
    }
    return orElse();
  }
}

abstract class ShowFavourites implements FavouritesState {
  factory ShowFavourites(List<Quote> quotes) = _$ShowFavourites;

  List<Quote> get quotes;

  ShowFavourites copyWith({List<Quote> quotes});
}

class _$NothingToShow implements NothingToShow {
  _$NothingToShow();

  @override
  String toString() {
    return 'FavouritesState.nothingToShow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NothingToShow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showFavourites(List<Quote> quotes),
    @required Result nothingToShow(),
  }) {
    assert(initial != null);
    assert(showFavourites != null);
    assert(nothingToShow != null);
    return nothingToShow();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showFavourites(List<Quote> quotes),
    Result nothingToShow(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nothingToShow != null) {
      return nothingToShow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showFavourites(ShowFavourites value),
    @required Result nothingToShow(NothingToShow value),
  }) {
    assert(initial != null);
    assert(showFavourites != null);
    assert(nothingToShow != null);
    return nothingToShow(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showFavourites(ShowFavourites value),
    Result nothingToShow(NothingToShow value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nothingToShow != null) {
      return nothingToShow(this);
    }
    return orElse();
  }
}

abstract class NothingToShow implements FavouritesState {
  factory NothingToShow() = _$NothingToShow;
}
