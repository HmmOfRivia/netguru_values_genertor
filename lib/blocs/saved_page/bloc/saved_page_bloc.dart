import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:netguru_values_genertor/domain/Quote.dart';
import 'package:netguru_values_genertor/infrastructure/repository.dart';

part 'saved_page_event.dart';
part 'saved_page_state.dart';

part 'saved_page_bloc.freezed.dart';
@injectable
class SavedPageBloc extends Bloc<SavedPageEvent, SavedPageState> {
  QuotesRepository _quotesRepository;
  SavedPageBloc(this._quotesRepository) : assert(_quotesRepository != null), super(SavedPageState.initial());

  @override
  Stream<SavedPageState> mapEventToState(
    SavedPageEvent event,
  ) async* {
    yield* event.map(
        deleteItem: (id) async* {
          await _quotesRepository.deleteQuote(id.id).then((value) =>
              value.fold(
                      (l) => print(l),
                      (r) => add(SavedPageEvent.loadAllQuotes())));

        },
        loadAllQuotes: (_) async* {
          yield await _quotesRepository.getAllQuotes().then((quotes) =>
              quotes.fold(
                      (l) => SavedPageState.nothingToShow(),
                      (r) => r.isEmpty ? SavedPageState.nothingToShow()
                          : SavedPageState.showAllQuotes(r)));
              });
  }
}
