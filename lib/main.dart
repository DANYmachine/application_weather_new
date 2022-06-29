import 'package:application_weather_new/Services/drift/app_db.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Services/Provider/provider.dart';
import 'Services/injections_container.dart';
import 'Services/repository.dart';
import 'SplashScreen/SplashScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initGetIt();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
    ),
  );
  await dependency<Provider>().readJson();
  await dependency<CitiesRepository>().GetCitiesList();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.transparent,
          statusBarColor: Colors.transparent,
        ),
        child: Splash(),
      ),
    );
  }
}
