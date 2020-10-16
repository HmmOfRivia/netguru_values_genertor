import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';
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
        theme: ThemeData(
          canvasColor: Colors.grey[200],
          brightness: Brightness.light,
          primaryColor: Color(0xFF05d563),
          accentColor: Color(0xFF05d563),
          cursorColor: Color(0xFF05d563),
          textTheme: TextTheme(
              headline1: GoogleFonts.montserrat(fontSize: 34, color: Colors.black87),
              headline3: GoogleFonts.montserrat(fontSize: 24, color: Colors.black87),
              headline4: GoogleFonts.montserrat(fontSize: 20, color: Colors.black87),
              headline5: GoogleFonts.montserrat(fontSize: 17, color: Colors.black87),
              headline6: GoogleFonts.montserrat(fontSize: 14, color: Colors.black87),

          )
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color(0xFF05d563),
          accentColor: Color(0xFF05d563),
          disabledColor: Colors.grey,
          cursorColor: Color(0xFF05d563),
            textTheme: TextTheme(
              headline1: GoogleFonts.montserrat(fontSize: 34, color: Colors.white),
              headline2: GoogleFonts.montserrat(fontSize: 30, color: Colors.white),
              headline3: GoogleFonts.montserrat(fontSize: 24, color: Colors.white),
              headline4: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),
              headline5: GoogleFonts.montserrat(fontSize: 17, color: Colors.white),
              headline6: GoogleFonts.montserrat(fontSize: 14, color: Colors.white),
            )
        ),
        themeMode: ThemeMode.system,
        home: QuotePage(),
      ),
    );
  }
}