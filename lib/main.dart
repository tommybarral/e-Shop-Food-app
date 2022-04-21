import 'package:eshop_food_app/screens/food_details_screen.dart';
import 'package:eshop_food_app/screens/food_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './models/food_data.dart';
import 'package:provider/provider.dart';
import './models/user_data.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FoodData(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserData(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FoodScreen(),
      ),
    );
  }
}