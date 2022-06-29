// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../BLoC/City_BLoC/1.CityBloc.dart';
import '../../BLoC/City_BLoC/2.CityEvent.dart';
import '1.HomePage.dart';

class RefreshButton extends StatefulWidget {
  const RefreshButton({Key? key}) : super(key: key);

  @override
  _RefreshButtonState createState() => _RefreshButtonState();
}

class _RefreshButtonState extends State<RefreshButton> {
  late CityBloc _cityBloc;

  @override
  void didChangeDependencies() {
    _cityBloc = BlocProvider.of<CityBloc>(context);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        CupertinoIcons.refresh_thick,
        color: buttonColor,
      ),
      onTap: () {
        _cityBloc.add(CityUpdateEvent());
      },
      onLongPress: () {
        _cityBloc.add(CityUpdateEvent());
      },
    );
  }
}
