import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sismo_rsia_zainab/views/loginpage.dart';

import 'package:sismo_rsia_zainab/views/menucontrollerpage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor:
          SystemUiOverlayStyle.dark.systemNavigationBarColor,
    ),
  );
  runApp(const InitApps());
}

route() {}

class InitApps extends StatelessWidget {
  const InitApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const LoginPage(),
        theme: ThemeData(
          primaryColor: Colors.white,
          textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
            bodyText1: GoogleFonts.montserrat(textStyle: textTheme.bodyText1),
          ),
        ));
  }
}
