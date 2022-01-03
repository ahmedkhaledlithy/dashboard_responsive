import 'package:dashboard_responsive/app_routing.dart';
import 'package:dashboard_responsive/constants.dart';
import 'package:dashboard_responsive/controllers/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


void main() {

  runApp(MyDashboard(appRouting: AppRouting(),));
}

class MyDashboard extends StatelessWidget {
  final AppRouting appRouting;
  const MyDashboard({Key? key,required this.appRouting}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Admin Panel',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white),
          canvasColor: secondaryColor,
        ),
        onGenerateRoute: appRouting.generateRoute,
      ),
    );
  }
}

