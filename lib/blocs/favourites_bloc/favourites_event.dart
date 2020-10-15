part of 'favourites_bloc.dart';

@freezed
abstract class FavouritesEvent with _$FavouritesEvent{
  factory FavouritesEvent.deleteItemFromFavourites(Quote quote) = DeleteItemFromFavourites;
  factory FavouritesEvent.loadFavourites() = LoadFavourites;
}
