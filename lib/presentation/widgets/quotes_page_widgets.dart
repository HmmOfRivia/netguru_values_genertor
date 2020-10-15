import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netguru_values_genertor/blocs/quotes_page_bloc/quotes_bloc.dart';
import 'package:netguru_values_genertor/domain/Quote.dart';
import 'package:netguru_values_genertor/presentation/favourites_page.dart';
import 'package:netguru_values_genertor/presentation/saved_page.dart';

Widget bottomAppbar(context) {
  return BottomAppBar(
      shape: AutomaticNotchedShape(
          RoundedRectangleBorder(), StadiumBorder(side: BorderSide())),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () { Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => FavouritesPage())); }),
          IconButton(
              icon: Icon(Icons.view_headline),
              onPressed: () { Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => SavedPage())); })
        ],
      )
  );
}

Widget quoteCard(BuildContext context, QuotesState state) {
  return AnimatedSwitcher(
      duration: Duration(seconds: 1),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SlideTransition(
          position: Tween<Offset>(begin: Offset(10, 10), end: Offset.zero)
              .animate(animation),
          child: child,
        );
      },
      child: Container(
        key: ValueKey<int>(state.quote.id),
        height: 400,
        child: Card(
            margin: EdgeInsets.all(50),
            child: Column(
              children: [
                Expanded(
                    flex: 8,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Center(
                        child: Text(
                          state.quote.value,
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline1
                        ),
                      ),
                    )
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      color: Theme.of(context).accentColor,
                      child: IconButton(
                        onPressed: () => BlocProvider.of<QuotesBloc>(context)..add(QuotesEvent.addToFavourite(state.quote)),
                        iconSize: 30,
                        icon: context.bloc<QuotesBloc>().state.quote.isFavourite
                            ? Icon(Icons.favorite)
                            : Icon(Icons.favorite_border),
                      ),
                    )
                )
              ],
            )
        ),
      )
  );
}

Widget floatingButtonQuote(BuildContext context){
  return FloatingActionButton.extended(
    heroTag: null,
    label: Text('Add Quote', style: Theme.of(context).textTheme.headline5),
    icon: Icon(Icons.add),
    onPressed: () {
      BlocProvider.of<QuotesBloc>(context).add(QuotesEvent.newQuoteButtonTapped());
    },
  );
}

Future asyncInputDialog(BuildContext context) async {
  String value = '';
  bool isEnabled = false;
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Text('Enter new Quote', style: Theme.of(context).textTheme.headline4),
            content: Row(
              children: [
                Expanded(
                    child: TextFormField(
                      autovalidate: true,
                      autofocus: true,
                      validator: (value) => value.isEmpty ? "Value is required" : null,
                      decoration: InputDecoration(labelText: 'Quote'),
                      onChanged: (v) {
                        value = v;
                        setState((){ v.isNotEmpty ? isEnabled = true : isEnabled = false; });
                      },
                    )
                ),
              ],
            ),
            actions: [
              FlatButton(
                  disabledColor: Theme.of(context).disabledColor,
                  child: Text('Submit', style: Theme.of(context).textTheme.headline6),
                  onPressed: isEnabled ? () {
                    BlocProvider.of<QuotesBloc>(context)
                      ..add(QuotesEvent.submitQuote(Quote(value: value, isFavourite: true)));
                    Navigator.of(context).pop();
                  } : null
              ),
              FlatButton(
                child: Text('Cancel', style: Theme.of(context).textTheme.headline6),
                onPressed: () {
                  BlocProvider.of<QuotesBloc>(context)..add(QuotesEvent.cancelSubmitQuote());
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        },
      );
    },
  );
}