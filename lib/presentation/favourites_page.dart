import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netguru_values_genertor/blocs/favourites_bloc/favourites_bloc.dart';
import 'package:netguru_values_genertor/injection_config.dart';
import 'package:netguru_values_genertor/presentation/widgets/favourites_page_widgets.dart';

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favourites', style: Theme.of(context).textTheme.headline4)),
      body: BlocProvider(
        create: (context) => getIt<FavouritesBloc>()
          ..add(FavouritesEvent.loadFavourites()),
        child: BlocBuilder<FavouritesBloc, FavouritesState>(
          builder: (ctx, state) {
            return state.map(
                initial: (_) {
                  return Container();},
                nothingToShow: (_) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 15),
                        Text('No Favourites Found', style: Theme.of(context).textTheme.headline3)
                      ],
                    ));},
                showFavourites: (e) {
                 return buildFavouritesListView(e, context);
            });
          },
        ),
      ),
    );
  }
}
