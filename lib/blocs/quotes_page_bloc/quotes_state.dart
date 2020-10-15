part of 'quotes_bloc.dart';

@freezed
abstract class QuotesState with _$QuotesState{
  const factory QuotesState({
    @required Quote quote,
    @required bool changeQuote,
    @required bool showAddQuoteDialog
  }) = _QuotesState;

  factory QuotesState.initial() => QuotesState(
    quote: Quote.empty(),
      changeQuote: false,
      showAddQuoteDialog: false
  );
}


