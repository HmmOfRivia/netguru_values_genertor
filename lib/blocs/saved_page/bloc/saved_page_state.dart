part of 'saved_page_bloc.dart';

@freezed
abstract class SavedPageState with _$SavedPageState{
  factory SavedPageState.initial() = Initial;
  factory SavedPageState.showAllQuotes(List<Quote> quotes) = ShowAllQuotes;
  factory SavedPageState.nothingToShow() = NothingToShow;
}