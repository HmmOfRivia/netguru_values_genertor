part of 'saved_page_bloc.dart';

@freezed
abstract class SavedPageEvent with _$SavedPageEvent{
  factory SavedPageEvent.deleteItem(int id) = DeleteItem;
  factory SavedPageEvent.loadAllQuotes() = LoadAllQuotes;
}