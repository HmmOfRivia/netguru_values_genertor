import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:netguru_values_genertor/domain/Quote.dart';
import 'package:netguru_values_genertor/infrastructure/repository.dart';

part 'favourites_event.dart';
part 'favourites_state.dart';

part 'favourites_bloc.freezed.dart';

@injectable
class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  QuotesRepository _quotesRepository;
  FavouritesBloc(this._quotesRepository) : assert(_quotesRepository != null), super(FavouritesState.initial());

  @override
  Stream<FavouritesState> mapEventToState(
    FavouritesEvent event,
  ) async* {
    yield* event.map(
        deleteItemFromFavourites: (quote) async* {
          state.map(
              initial: (_) {},
              showFavourites: (_) {
                _quotesRepository.updateQuote(quote.quote.copyWith(isFavourite: false)).then((value) =>
                    value.fold(
                            (l) => print(l),
                            (_) => add(FavouritesEvent.loadFavourites()))
                );
                },
              nothingToShow: (_) {});
        },
        loadFavourites: (_) async* {
          yield await _quotesRepository.getFavouritesList().then((quotes) {
            return quotes.fold(
                    (l) => FavouritesState.nothingToShow(),
                    (r) => r.isEmpty ? FavouritesState.nothingToShow()
                        : FavouritesState.showFavourites(r));
            });
        });
  }
}
