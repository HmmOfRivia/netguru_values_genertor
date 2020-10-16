import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:netguru_values_genertor/presentation/app_theme/theme.dart';
import 'package:netguru_values_genertor/presentation/quotes_page.dart';
import 'blocs/quotes_page_bloc/quotes_bloc.dart';
import 'injection_config.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<QuotesBloc>()..add(QuotesEvent.requestQuote()),
        )
      ],
      child: MaterialApp(
        theme: ApplicationTheme.lightTheme,
        darkTheme: ApplicationTheme.darkTheme,
        themeMode: ThemeMode.system,
        home: QuotePage(),
      ),
    );
  }
}