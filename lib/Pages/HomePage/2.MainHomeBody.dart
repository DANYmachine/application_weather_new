// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../BLoC/CityDeleteBloc/1.CityDeleteBloc.dart';
import '../../BLoC/City_BLoC/1.CityBloc.dart';
import '../../BLoC/City_BLoC/2.CityEvent.dart';
import '../../Services/injections_container.dart';
import '../DeletePage/deletePage.dart';
import '1.HomePage.dart';
import '3.AddButton.dart';
import '5.CitiesToDisplay.dart';
import '4.RefreshButton.dart';
import '6.AuthButton.dart';

class MainHomeBody extends StatefulWidget {
  const MainHomeBody({Key? key}) : super(key: key);

  @override
  _MainHomeBodyState createState() => _MainHomeBodyState();
}

class _MainHomeBodyState extends State<MainHomeBody> {
  late CityBloc _cityBloc;
  @override
  void didChangeDependencies() {
    _cityBloc = dependency.get<CityBloc>();

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2196F3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 15,
                      left: 15,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => BlocProvider(
                              create: (_) => dependency<CityBlocDelete>(),
                              child: DeletePage(),
                            ),
                          ),
                        ).then(
                          (result) {
                            _cityBloc.add(
                              CityWithoutUpdateEvent(),
                            );
                          },
                        );
                      },
                      child: Icon(
                        CupertinoIcons.circle_grid_3x3_fill,
                        color: buttonColor,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BlocProvider(
                        create: (_) => _cityBloc,
                        child: AddButton(),
                      ),
                      BlocProvider(
                        create: (_) => _cityBloc,
                        child: RefreshButton(),
                      ),
                      AuthButton(),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  )
                ],
              ),
            ),
            BlocProvider(
              create: (context) => _cityBloc,
              child: CitiesToDisplay(),
            ),
          ],
        ),
      ),
    );
  }
}
