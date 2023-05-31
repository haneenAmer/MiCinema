import 'package:flutter/material.dart';
import 'package:micinema/screens/app_router.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  /// CREAT OBJECt FROM AppRouter CLASS AND CREAT CONSTRUCTOR
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// CALL HE OBJECT IN onGenerateRoute
      onGenerateRoute: appRouter.generateRout,
      // home: Scaffold(
      //   backgroundColor:Color(0xff1B1B1D),
      //   //body: SplashScreen(),
      // ),
    );
  }
}
