import 'package:flutter/material.dart';
import 'package:people_peace_solution/domain/addmob/addmob_data.dart';
import 'package:people_peace_solution/ui/provider/category_provider.dart';
import 'package:people_peace_solution/ui/provider/detail_provider.dart';
import 'package:people_peace_solution/ui/provider/login_provider.dart';
import 'package:people_peace_solution/ui/screen/campaign_cards_screen.dart';
import 'package:people_peace_solution/ui/screen/category_screen.dart';
import 'package:people_peace_solution/ui/screen/detail_screen.dart';
import 'package:people_peace_solution/ui/screen/login_screen.dart';
import 'package:people_peace_solution/ui/screen/onboarding.dart';
import 'package:people_peace_solution/utils/SlideLeft.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';


void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => DetailProvider() ),
      ChangeNotifierProvider(create: (_) => CategoryProvider() ),
      ChangeNotifierProvider(create: (_) => LoginProvider() ),
    ],
    child:  MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),


      routes: {
        "/":(context)=>OnBoardingPage(),
      },
      onGenerateRoute: (settings){
        switch(settings.name){
          case "/cards":
            return SlideLeftRoute(page: CampaignScreen());
            break;

          case "/detail":
            return SlideLeftRoute(page: DetailPage(index:settings.arguments));
            break;

          case "/category":
            return SlideLeftRoute(page: Category());
            break;

          case "/login":
            return SlideLeftRoute(page: Login_Screen());
            break;


          default:
            return SlideLeftRoute(page:OnBoardingPage() );
            break;

        }


      },
    );
  }
}


