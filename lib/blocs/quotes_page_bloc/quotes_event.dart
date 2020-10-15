part of 'quotes_bloc.dart';

@freezed
abstract class QuotesEvent with _$QuotesEvent{
  factory QuotesEvent.requestQuote() = RequestQuote;
  factory QuotesEvent.addToFavourite(Quote quote) = AddToFavourite;
  factory QuotesEvent.displayNewQuote() = DispalyNewQuote;
  factory QuotesEvent.newQuoteButtonTapped() = NewQuoteButtonTapped;
  factory QuotesEvent.submitQuote(Quote quote) = SubmitQuote;
  factory QuotesEvent.cancelSubmitQuote() = CancelSubmitQuote;
}
