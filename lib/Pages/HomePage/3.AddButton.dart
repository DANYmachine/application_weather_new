// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../BLoC/CityAddBloc/1.CityAddBloc.dart';
import '../../BLoC/City_BLoC/1.CityBloc.dart';
import '../../BLoC/City_BLoC/2.CityEvent.dart';
import '../../Services/injections_container.dart';
import '../AddPage/AddPage.dart';
import '1.HomePage.dart';

class AddButton extends StatefulWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  _AddButtonState createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  late CityBloc _cityBloc;
  @override
  void didChangeDependencies() {
    _cityBloc = BlocProvider.of<CityBloc>(context);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Icon(
        CupertinoIcons.add,
        color: buttonColor,
        //color: Colors.white,
      ),
      onPressed: () async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (_) => dependency<CityAddBloc>(),
              child: AddPage(),
            ),
          ),
        ).then((result) {
          _cityBloc.add(
            CityInitEvent(),
          );
          if (result != null) {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'City $result added!',
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }
        });
      },
    );
  }
}
