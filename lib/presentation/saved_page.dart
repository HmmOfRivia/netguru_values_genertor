import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netguru_values_genertor/blocs/saved_page/bloc/saved_page_bloc.dart';
import 'package:netguru_values_genertor/presentation/widgets/saved_page_widgets.dart';
import 'package:netguru_values_genertor/injection_config.dart';


class SavedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes in memory'),
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<SavedPageBloc>()..add(SavedPageEvent.loadAllQuotes()),
        child: BlocBuilder<SavedPageBloc, SavedPageState>(
          builder: (ctx, state) {
            return state.map(initial: (_) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }, showAllQuotes: (e) {
              return buildSavedListView(e, ctx);
            });
          },
        ),
      ),
    );
  }
}
