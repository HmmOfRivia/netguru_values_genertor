part of 'favourites_bloc.dart';

@freezed
abstract class FavouritesState with _$FavouritesState{
  factory FavouritesState.initial() = Initial;
  factory FavouritesState.showFavourites(List<Quote> quotes) = ShowFavourites;
  factory FavouritesState.nothingToShow() = NothingToShow;
}