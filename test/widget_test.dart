// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:netguru_values_genertor/blocs/quotes_page_bloc/quotes_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:netguru_values_genertor/presentation/quotes_page.dart';

class QuotesBlocMock extends MockBloc<QuotesEvent, QuotesState> implements QuotesBloc{}

void main() async {
  QuotesBlocMock _quotesBloc;

  Widget makeTestableWidget() {
    return BlocProvider<QuotesBloc>(
      create: (context) => _quotesBloc,
      child: MaterialApp(
          home: Scaffold(
            body: QuotePage(),
          )),
    );
  }

  setUp(() {
    _quotesBloc = QuotesBlocMock();
  });

  testWidgets('Show AnimatedSwitcher when QuotesBloc return initial state',
          (WidgetTester tester) async {

        when(_quotesBloc.state).thenReturn(QuotesState.initial());

        await tester.pumpWidget(makeTestableWidget());
        expect(find.byKey(Key('AnimatedSwitcher')), findsOneWidget);
      });
}