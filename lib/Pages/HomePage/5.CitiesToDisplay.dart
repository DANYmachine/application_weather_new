// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '1.HomePage.dart';
import '../../BLoC/City_BLoC/1.CityBloc.dart';
import '../../BLoC/City_BLoC/2.CityEvent.dart';
import '../../BLoC/City_BLoC/3.CityState.dart';
import '../../classes/City/1.CityWidget.dart';

class CitiesToDisplay extends StatefulWidget {
  const CitiesToDisplay({Key? key}) : super(key: key);

  @override
  _CitiesToDisplayState createState() => _CitiesToDisplayState();
}

class _CitiesToDisplayState extends State<CitiesToDisplay> {
  late CityBloc _bloc;

  @override
  void didChangeDependencies() {
    _bloc = BlocProvider.of<CityBloc>(context);
    _bloc.add(CityInitEvent());

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CityBloc, CityState>(
      builder: (context, state) {
        log(state.toString());
        if (state is CityLoadingState) {
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 2.58,
            ),
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        } else if (state is CityLoadedState) {
          return Container(
            height: MediaQuery.of(context).size.height - 88,
            child: Center(
              child: PageView.builder(
                itemCount: state.cities.length,
                itemBuilder: (context, index) {
                  return GetCityWidget(city: state.cities[index]);
                },
              ),
            ),
          );
        } else if (state is CityErrorState) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Error',
                  style: TextStyle(
                    color: fontColor,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          );
        } else if (state is CityUninitialisedState) {
          return SizedBox(
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
              child: Icon(CupertinoIcons.alarm),
            ),
          );
        }
        return SizedBox();
      },
    );
  }
}
