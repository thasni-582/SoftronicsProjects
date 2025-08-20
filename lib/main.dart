import 'package:basics/Layout2.dart';
import 'package:basics/carQuikApp1208/carBrand_ui.dart';
import 'package:basics/carQuikApp1208/inbox.dart';
import 'package:basics/carQuikApp1208/profile.dart';
import 'package:basics/carQuikApp1208/wishList.dart';
import 'package:basics/layout.dart';
import 'package:basics/loginUi0208/loginUi.dart';
import 'package:basics/loginUi0208/loginUi2.dart';
import 'package:basics/loginUi0508/login_ui3.dart';
import 'package:basics/loginUi0508/login_ui4.dart';
import 'package:basics/loginUi0708/login_ui1.dart';
import 'package:basics/loginUi0908/saleskip.dart';
import 'package:basics/login_page.dart';
import 'package:basics/study_container.dart';
import 'package:basics/widgets/MyNavigation.dart';
import 'package:basics/widgets/StudyListviewBuilder.dart';
import 'package:basics/widgets/StudyNavigation.dart';
import 'package:basics/widgets/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Layout',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:MyNavigation(),

    );
  }
}


