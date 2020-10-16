import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netguru_values_genertor/blocs/quotes_page_bloc/quotes_bloc.dart';
import 'package:netguru_values_genertor/presentation/widgets/quotes_page_widgets.dart';


class QuotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<QuotesBloc, QuotesState>(
          listener: (context, state) {
            if(state.showAddQuoteDialog) {return asyncInputDialog(context);}
            if(state.changeQuote) context.bloc<QuotesBloc>().add(QuotesEvent.requestQuote());
          },
          builder: (context, state) {
            return quoteCard(context, state);
          },
        ),
        floatingActionButton: floatingButtonQuote(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: bottomAppbar(context)
    );
  }
}