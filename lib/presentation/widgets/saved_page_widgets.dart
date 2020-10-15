import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netguru_values_genertor/blocs/saved_page/bloc/saved_page_bloc.dart';

Widget buildSavedListView(e, context){
  return ListView.builder(
      itemCount: e.quotes.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.centerLeft,
                          child: Text(e.quotes[index].value,
                              style: Theme.of(context).textTheme.headline5)),
                    ]),
              ),
              Expanded(
                flex: 2,
                child: IconButton(
                    icon: Icon(Icons.clear,
                        color: Theme.of(context).accentColor),
                    onPressed: () {
                      BlocProvider.of<SavedPageBloc>(context)
                        ..add(SavedPageEvent.deleteItem(e.quotes[index].id));
                    }),
              )
            ],
          ),
        );
      });
}