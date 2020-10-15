import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:netguru_values_genertor/domain/Quote.dart';
import 'package:netguru_values_genertor/infrastructure/repository.dart';

part 'quotes_event.dart';
part 'quotes_state.dart';

part 'quotes_bloc.freezed.dart';

@injectable
class QuotesBloc extends Bloc<QuotesEvent, QuotesState> {
  QuotesRepository _quotesRepository;
  QuotesBloc(this._quotesRepository);

  @override
  QuotesState get initialState => QuotesState.initial();

  @override
  Stream<QuotesState> mapEventToState(
    QuotesEvent event,
  ) async* {
    yield* event.map(
        requestQuote: (_) async* {
          yield await _quotesRepository.getRandomQuote().then((quote) =>
              state.copyWith(quote: quote, changeQuote: false));

          Future.delayed(Duration(seconds: 5), () {
            if (!state.showAddQuoteDialog) add(QuotesEvent.displayNewQuote());});
        },
        addToFavourite: (e) async* {
          await _quotesRepository.updateQuote(e.quote.copyWith(
              isFavourite: e.quote.isFavourite ? false : true));

          yield state.copyWith(
              quote: e.quote.copyWith(
                  isFavourite: e.quote.isFavourite ? false : true));
        },
        displayNewQuote: (_) async* {
          yield state.copyWith(changeQuote: true);
        },
        newQuoteButtonTapped: (_) async* {
          yield state.copyWith(showAddQuoteDialog: true);
        },
        submitQuote: (quote) async* {
          yield state.copyWith(showAddQuoteDialog: false);
          await _quotesRepository.createQuote(quote.quote);
          add(QuotesEvent.displayNewQuote());
        },
        cancelSubmitQuote: (_) async* {
          yield state.copyWith(showAddQuoteDialog: false);
          add(QuotesEvent.displayNewQuote());
        });
  }
}
