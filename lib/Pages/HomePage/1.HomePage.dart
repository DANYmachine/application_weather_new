// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../BLoC/City_BLoC/1.CityBloc.dart';
import '../../BLoC/Theme/ThemeBloc.dart';
import '../../Services/injections_container.dart';
import '2.MainHomeBody.dart';

var jCities = [];

bool theme = true;

Color? backgroundColor;
Color? buttonColor;
Color? fontColor;

Future<void> readCitiesJSON() async {
  final String response = await rootBundle.loadString('lib/city.list.json');
  final data = await json.decode(response);
  for (var ct in data) {
    jCities.add(ct['name']);
  }
}

void checkTheme() {
  theme
      ? backgroundColor = Color(0xFF4A4A58)
      : backgroundColor = Color(0xFFD5D5E0);

  theme ? fontColor = Color(0xFFFFFFFF) : fontColor = Color(0xFF0B3E58);

  theme ? buttonColor = Color(0xFFD5D5E0) : buttonColor = Color(0xFF4A4A58);

  theme = !theme;
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    checkTheme();
    //initFireBase();
    //readCitiesJSON();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CityBloc(),
      child: BlocProvider(
        create: (_) => dependency<ThemeBloc>(),
        child: MainHomeBody(),
      ),
    );
  }
}
