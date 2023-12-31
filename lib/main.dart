
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard_flutter/bloc/review_bloc.dart';
import 'package:responsive_dashboard_flutter/screens/operartion_listview/operation_listview.dart';
import 'package:responsive_dashboard_flutter/screens/review_page/review_page.dart';
import 'package:responsive_dashboard_flutter/screens/splashscreen/splashscreen.dart';
import 'const/colors.dart';
import 'controller/menuapp_controller.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuAppController(),
          ),
          ChangeNotifierProvider(create: (context)=>ReviewBloc())
        ],
        child:OperationListView()
      ),
    );
  }
}
