// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:netguru_values_genertor/infrastructure/repository.dart';
import 'package:netguru_values_genertor/blocs/saved_page/bloc/saved_page_bloc.dart';
import 'package:netguru_values_genertor/blocs/favourites_bloc/favourites_bloc.dart';
import 'package:netguru_values_genertor/blocs/quotes_page_bloc/quotes_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<QuotesRepository>(() => QuotesRepository());
  g.registerFactory<SavedPageBloc>(() => SavedPageBloc(g<QuotesRepository>()));
  g.registerFactory<FavouritesBloc>(
      () => FavouritesBloc(g<QuotesRepository>()));
  g.registerFactory<QuotesBloc>(() => QuotesBloc(g<QuotesRepository>()));
}
