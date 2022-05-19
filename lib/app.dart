import 'package:devkestlerbarrios/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation,deviceType) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(
            textTheme: GoogleFonts.inconsolataTextTheme(Theme.of(context).textTheme),
            brightness: Brightness.dark,
          primarySwatch: Colors.deepPurple
          ),
          home: const HomePage(),
        );
      }
    );
  }
}