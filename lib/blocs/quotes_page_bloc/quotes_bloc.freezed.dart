// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'quotes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$QuotesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result requestQuote(),
    @required Result addToFavourite(Quote quote),
    @required Result displayNewQuote(),
    @required Result newQuoteButtonTapped(),
    @required Result submitQuote(Quote quote),
    @required Result cancelSubmitQuote(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result requestQuote(),
    Result addToFavourite(Quote quote),
    Result displayNewQuote(),
    Result newQuoteButtonTapped(),
    Result submitQuote(Quote quote),
    Result cancelSubmitQuote(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result requestQuote(RequestQuote value),
    @required Result addToFavourite(AddToFavourite value),
    @required Result displayNewQuote(DispalyNewQuote value),
    @required Result newQuoteButtonTapped(NewQuoteButtonTapped value),
    @required Result submitQuote(SubmitQuote value),
    @required Result cancelSubmitQuote(CancelSubmitQuote value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result requestQuote(RequestQuote value),
    Result addToFavourite(AddToFavourite value),
    Result displayNewQuote(DispalyNewQuote value),
    Result newQuoteButtonTapped(NewQuoteButtonTapped value),
    Result submitQuote(SubmitQuote value),
    Result cancelSubmitQuote(CancelSubmitQuote value),
    @required Result orElse(),
  });
}

class _$QuotesEventTearOff {
  const _$QuotesEventTearOff();

  RequestQuote requestQuote() {
    return RequestQuote();
  }

  AddToFavourite addToFavourite(Quote quote) {
    return AddToFavourite(
      quote,
    );
  }

  DispalyNewQuote displayNewQuote() {
    return DispalyNewQuote();
  }

  NewQuoteButtonTapped newQuoteButtonTapped() {
    return NewQuoteButtonTapped();
  }

  SubmitQuote submitQuote(Quote quote) {
    return SubmitQuote(
      quote,
    );
  }

  CancelSubmitQuote cancelSubmitQuote() {
    return CancelSubmitQuote();
  }
}

const $QuotesEvent = _$QuotesEventTearOff();

class _$RequestQuote implements RequestQuote {
  _$RequestQuote();

  @override
  String toString() {
    return 'QuotesEvent.requestQuote()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RequestQuote);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result requestQuote(),
    @required Result addToFavourite(Quote quote),
    @required Result displayNewQuote(),
    @required Result newQuoteButtonTapped(),
    @required Result submitQuote(Quote quote),
    @required Result cancelSubmitQuote(),
  }) {
    assert(requestQuote != null);
    assert(addToFavourite != null);
    assert(displayNewQuote != null);
    assert(newQuoteButtonTapped != null);
    assert(submitQuote != null);
    assert(cancelSubmitQuote != null);
    return requestQuote();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result requestQuote(),
    Result addToFavourite(Quote quote),
    Result displayNewQuote(),
    Result newQuoteButtonTapped(),
    Result submitQuote(Quote quote),
    Result cancelSubmitQuote(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestQuote != null) {
      return requestQuote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result requestQuote(RequestQuote value),
    @required Result addToFavourite(AddToFavourite value),
    @required Result displayNewQuote(DispalyNewQuote value),
    @required Result newQuoteButtonTapped(NewQuoteButtonTapped value),
    @required Result submitQuote(SubmitQuote value),
    @required Result cancelSubmitQuote(CancelSubmitQuote value),
  }) {
    assert(requestQuote != null);
    assert(addToFavourite != null);
    assert(displayNewQuote != null);
    assert(newQuoteButtonTapped != null);
    assert(submitQuote != null);
    assert(cancelSubmitQuote != null);
    return requestQuote(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result requestQuote(RequestQuote value),
    Result addToFavourite(AddToFavourite value),
    Result displayNewQuote(DispalyNewQuote value),
    Result newQuoteButtonTapped(NewQuoteButtonTapped value),
    Result submitQuote(SubmitQuote value),
    Result cancelSubmitQuote(CancelSubmitQuote value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestQuote != null) {
      return requestQuote(this);
    }
    return orElse();
  }
}

abstract class RequestQuote implements QuotesEvent {
  factory RequestQuote() = _$RequestQuote;
}

class _$AddToFavourite implements AddToFavourite {
  _$AddToFavourite(this.quote) : assert(quote != null);

  @override
  final Quote quote;

  @override
  String toString() {
    return 'QuotesEvent.addToFavourite(quote: $quote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddToFavourite &&
            (identical(other.quote, quote) ||
                const DeepCollectionEquality().equals(other.quote, quote)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quote);

  @override
  _$AddToFavourite copyWith({
    Object quote = freezed,
  }) {
    return _$AddToFavourite(
      quote == freezed ? this.quote : quote as Quote,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result requestQuote(),
    @required Result addToFavourite(Quote quote),
    @required Result displayNewQuote(),
    @required Result newQuoteButtonTapped(),
    @required Result submitQuote(Quote quote),
    @required Result cancelSubmitQuote(),
  }) {
    assert(requestQuote != null);
    assert(addToFavourite != null);
    assert(displayNewQuote != null);
    assert(newQuoteButtonTapped != null);
    assert(submitQuote != null);
    assert(cancelSubmitQuote != null);
    return addToFavourite(quote);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result requestQuote(),
    Result addToFavourite(Quote quote),
    Result displayNewQuote(),
    Result newQuoteButtonTapped(),
    Result submitQuote(Quote quote),
    Result cancelSubmitQuote(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addToFavourite != null) {
      return addToFavourite(quote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result requestQuote(RequestQuote value),
    @required Result addToFavourite(AddToFavourite value),
    @required Result displayNewQuote(DispalyNewQuote value),
    @required Result newQuoteButtonTapped(NewQuoteButtonTapped value),
    @required Result submitQuote(SubmitQuote value),
    @required Result cancelSubmitQuote(CancelSubmitQuote value),
  }) {
    assert(requestQuote != null);
    assert(addToFavourite != null);
    assert(displayNewQuote != null);
    assert(newQuoteButtonTapped != null);
    assert(submitQuote != null);
    assert(cancelSubmitQuote != null);
    return addToFavourite(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result requestQuote(RequestQuote value),
    Result addToFavourite(AddToFavourite value),
    Result displayNewQuote(DispalyNewQuote value),
    Result newQuoteButtonTapped(NewQuoteButtonTapped value),
    Result submitQuote(SubmitQuote value),
    Result cancelSubmitQuote(CancelSubmitQuote value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addToFavourite != null) {
      return addToFavourite(this);
    }
    return orElse();
  }
}

abstract class AddToFavourite implements QuotesEvent {
  factory AddToFavourite(Quote quote) = _$AddToFavourite;

  Quote get quote;

  AddToFavourite copyWith({Quote quote});
}

class _$DispalyNewQuote implements DispalyNewQuote {
  _$DispalyNewQuote();

  @override
  String toString() {
    return 'QuotesEvent.displayNewQuote()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DispalyNewQuote);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result requestQuote(),
    @required Result addToFavourite(Quote quote),
    @required Result displayNewQuote(),
    @required Result newQuoteButtonTapped(),
    @required Result submitQuote(Quote quote),
    @required Result cancelSubmitQuote(),
  }) {
    assert(requestQuote != null);
    assert(addToFavourite != null);
    assert(displayNewQuote != null);
    assert(newQuoteButtonTapped != null);
    assert(submitQuote != null);
    assert(cancelSubmitQuote != null);
    return displayNewQuote();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result requestQuote(),
    Result addToFavourite(Quote quote),
    Result displayNewQuote(),
    Result newQuoteButtonTapped(),
    Result submitQuote(Quote quote),
    Result cancelSubmitQuote(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (displayNewQuote != null) {
      return displayNewQuote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result requestQuote(RequestQuote value),
    @required Result addToFavourite(AddToFavourite value),
    @required Result displayNewQuote(DispalyNewQuote value),
    @required Result newQuoteButtonTapped(NewQuoteButtonTapped value),
    @required Result submitQuote(SubmitQuote value),
    @required Result cancelSubmitQuote(CancelSubmitQuote value),
  }) {
    assert(requestQuote != null);
    assert(addToFavourite != null);
    assert(displayNewQuote != null);
    assert(newQuoteButtonTapped != null);
    assert(submitQuote != null);
    assert(cancelSubmitQuote != null);
    return displayNewQuote(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result requestQuote(RequestQuote value),
    Result addToFavourite(AddToFavourite value),
    Result displayNewQuote(DispalyNewQuote value),
    Result newQuoteButtonTapped(NewQuoteButtonTapped value),
    Result submitQuote(SubmitQuote value),
    Result cancelSubmitQuote(CancelSubmitQuote value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (displayNewQuote != null) {
      return displayNewQuote(this);
    }
    return orElse();
  }
}

abstract class DispalyNewQuote implements QuotesEvent {
  factory DispalyNewQuote() = _$DispalyNewQuote;
}

class _$NewQuoteButtonTapped implements NewQuoteButtonTapped {
  _$NewQuoteButtonTapped();

  @override
  String toString() {
    return 'QuotesEvent.newQuoteButtonTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NewQuoteButtonTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result requestQuote(),
    @required Result addToFavourite(Quote quote),
    @required Result displayNewQuote(),
    @required Result newQuoteButtonTapped(),
    @required Result submitQuote(Quote quote),
    @required Result cancelSubmitQuote(),
  }) {
    assert(requestQuote != null);
    assert(addToFavourite != null);
    assert(displayNewQuote != null);
    assert(newQuoteButtonTapped != null);
    assert(submitQuote != null);
    assert(cancelSubmitQuote != null);
    return newQuoteButtonTapped();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result requestQuote(),
    Result addToFavourite(Quote quote),
    Result displayNewQuote(),
    Result newQuoteButtonTapped(),
    Result submitQuote(Quote quote),
    Result cancelSubmitQuote(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newQuoteButtonTapped != null) {
      return newQuoteButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result requestQuote(RequestQuote value),
    @required Result addToFavourite(AddToFavourite value),
    @required Result displayNewQuote(DispalyNewQuote value),
    @required Result newQuoteButtonTapped(NewQuoteButtonTapped value),
    @required Result submitQuote(SubmitQuote value),
    @required Result cancelSubmitQuote(CancelSubmitQuote value),
  }) {
    assert(requestQuote != null);
    assert(addToFavourite != null);
    assert(displayNewQuote != null);
    assert(newQuoteButtonTapped != null);
    assert(submitQuote != null);
    assert(cancelSubmitQuote != null);
    return newQuoteButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result requestQuote(RequestQuote value),
    Result addToFavourite(AddToFavourite value),
    Result displayNewQuote(DispalyNewQuote value),
    Result newQuoteButtonTapped(NewQuoteButtonTapped value),
    Result submitQuote(SubmitQuote value),
    Result cancelSubmitQuote(CancelSubmitQuote value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newQuoteButtonTapped != null) {
      return newQuoteButtonTapped(this);
    }
    return orElse();
  }
}

abstract class NewQuoteButtonTapped implements QuotesEvent {
  factory NewQuoteButtonTapped() = _$NewQuoteButtonTapped;
}

class _$SubmitQuote implements SubmitQuote {
  _$SubmitQuote(this.quote) : assert(quote != null);

  @override
  final Quote quote;

  @override
  String toString() {
    return 'QuotesEvent.submitQuote(quote: $quote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubmitQuote &&
            (identical(other.quote, quote) ||
                const DeepCollectionEquality().equals(other.quote, quote)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quote);

  @override
  _$SubmitQuote copyWith({
    Object quote = freezed,
  }) {
    return _$SubmitQuote(
      quote == freezed ? this.quote : quote as Quote,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result requestQuote(),
    @required Result addToFavourite(Quote quote),
    @required Result displayNewQuote(),
    @required Result newQuoteButtonTapped(),
    @required Result submitQuote(Quote quote),
    @required Result cancelSubmitQuote(),
  }) {
    assert(requestQuote != null);
    assert(addToFavourite != null);
    assert(displayNewQuote != null);
    assert(newQuoteButtonTapped != null);
    assert(submitQuote != null);
    assert(cancelSubmitQuote != null);
    return submitQuote(quote);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result requestQuote(),
    Result addToFavourite(Quote quote),
    Result displayNewQuote(),
    Result newQuoteButtonTapped(),
    Result submitQuote(Quote quote),
    Result cancelSubmitQuote(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitQuote != null) {
      return submitQuote(quote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result requestQuote(RequestQuote value),
    @required Result addToFavourite(AddToFavourite value),
    @required Result displayNewQuote(DispalyNewQuote value),
    @required Result newQuoteButtonTapped(NewQuoteButtonTapped value),
    @required Result submitQuote(SubmitQuote value),
    @required Result cancelSubmitQuote(CancelSubmitQuote value),
  }) {
    assert(requestQuote != null);
    assert(addToFavourite != null);
    assert(displayNewQuote != null);
    assert(newQuoteButtonTapped != null);
    assert(submitQuote != null);
    assert(cancelSubmitQuote != null);
    return submitQuote(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result requestQuote(RequestQuote value),
    Result addToFavourite(AddToFavourite value),
    Result displayNewQuote(DispalyNewQuote value),
    Result newQuoteButtonTapped(NewQuoteButtonTapped value),
    Result submitQuote(SubmitQuote value),
    Result cancelSubmitQuote(CancelSubmitQuote value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitQuote != null) {
      return submitQuote(this);
    }
    return orElse();
  }
}

abstract class SubmitQuote implements QuotesEvent {
  factory SubmitQuote(Quote quote) = _$SubmitQuote;

  Quote get quote;

  SubmitQuote copyWith({Quote quote});
}

class _$CancelSubmitQuote implements CancelSubmitQuote {
  _$CancelSubmitQuote();

  @override
  String toString() {
    return 'QuotesEvent.cancelSubmitQuote()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelSubmitQuote);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result requestQuote(),
    @required Result addToFavourite(Quote quote),
    @required Result displayNewQuote(),
    @required Result newQuoteButtonTapped(),
    @required Result submitQuote(Quote quote),
    @required Result cancelSubmitQuote(),
  }) {
    assert(requestQuote != null);
    assert(addToFavourite != null);
    assert(displayNewQuote != null);
    assert(newQuoteButtonTapped != null);
    assert(submitQuote != null);
    assert(cancelSubmitQuote != null);
    return cancelSubmitQuote();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result requestQuote(),
    Result addToFavourite(Quote quote),
    Result displayNewQuote(),
    Result newQuoteButtonTapped(),
    Result submitQuote(Quote quote),
    Result cancelSubmitQuote(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelSubmitQuote != null) {
      return cancelSubmitQuote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result requestQuote(RequestQuote value),
    @required Result addToFavourite(AddToFavourite value),
    @required Result displayNewQuote(DispalyNewQuote value),
    @required Result newQuoteButtonTapped(NewQuoteButtonTapped value),
    @required Result submitQuote(SubmitQuote value),
    @required Result cancelSubmitQuote(CancelSubmitQuote value),
  }) {
    assert(requestQuote != null);
    assert(addToFavourite != null);
    assert(displayNewQuote != null);
    assert(newQuoteButtonTapped != null);
    assert(submitQuote != null);
    assert(cancelSubmitQuote != null);
    return cancelSubmitQuote(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result requestQuote(RequestQuote value),
    Result addToFavourite(AddToFavourite value),
    Result displayNewQuote(DispalyNewQuote value),
    Result newQuoteButtonTapped(NewQuoteButtonTapped value),
    Result submitQuote(SubmitQuote value),
    Result cancelSubmitQuote(CancelSubmitQuote value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelSubmitQuote != null) {
      return cancelSubmitQuote(this);
    }
    return orElse();
  }
}

abstract class CancelSubmitQuote implements QuotesEvent {
  factory CancelSubmitQuote() = _$CancelSubmitQuote;
}

mixin _$QuotesState {
  Quote get quote;
  bool get changeQuote;
  bool get showAddQuoteDialog;

  QuotesState copyWith(
      {Quote quote, bool changeQuote, bool showAddQuoteDialog});
}

class _$QuotesStateTearOff {
  const _$QuotesStateTearOff();

  _QuotesState call(
      {@required Quote quote,
      @required bool changeQuote,
      @required bool showAddQuoteDialog}) {
    return _QuotesState(
      quote: quote,
      changeQuote: changeQuote,
      showAddQuoteDialog: showAddQuoteDialog,
    );
  }
}

const $QuotesState = _$QuotesStateTearOff();

class _$_QuotesState implements _QuotesState {
  const _$_QuotesState(
      {@required this.quote,
      @required this.changeQuote,
      @required this.showAddQuoteDialog})
      : assert(quote != null),
        assert(changeQuote != null),
        assert(showAddQuoteDialog != null);

  @override
  final Quote quote;
  @override
  final bool changeQuote;
  @override
  final bool showAddQuoteDialog;

  @override
  String toString() {
    return 'QuotesState(quote: $quote, changeQuote: $changeQuote, showAddQuoteDialog: $showAddQuoteDialog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuotesState &&
            (identical(other.quote, quote) ||
                const DeepCollectionEquality().equals(other.quote, quote)) &&
            (identical(other.changeQuote, changeQuote) ||
                const DeepCollectionEquality()
                    .equals(other.changeQuote, changeQuote)) &&
            (identical(other.showAddQuoteDialog, showAddQuoteDialog) ||
                const DeepCollectionEquality()
                    .equals(other.showAddQuoteDialog, showAddQuoteDialog)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quote) ^
      const DeepCollectionEquality().hash(changeQuote) ^
      const DeepCollectionEquality().hash(showAddQuoteDialog);

  @override
  _$_QuotesState copyWith({
    Object quote = freezed,
    Object changeQuote = freezed,
    Object showAddQuoteDialog = freezed,
  }) {
    return _$_QuotesState(
      quote: quote == freezed ? this.quote : quote as Quote,
      changeQuote:
          changeQuote == freezed ? this.changeQuote : changeQuote as bool,
      showAddQuoteDialog: showAddQuoteDialog == freezed
          ? this.showAddQuoteDialog
          : showAddQuoteDialog as bool,
    );
  }
}

abstract class _QuotesState implements QuotesState {
  const factory _QuotesState(
      {@required Quote quote,
      @required bool changeQuote,
      @required bool showAddQuoteDialog}) = _$_QuotesState;

  @override
  Quote get quote;
  @override
  bool get changeQuote;
  @override
  bool get showAddQuoteDialog;

  @override
  _QuotesState copyWith(
      {Quote quote, bool changeQuote, bool showAddQuoteDialog});
}
