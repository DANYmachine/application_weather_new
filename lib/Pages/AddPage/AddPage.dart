import 'dart:developer';

import 'package:application_weather_new/Services/DB/model.dart';
import 'package:application_weather_new/Services/Provider/provider.dart';
import 'package:application_weather_new/Services/injections_container.dart';
import 'package:application_weather_new/Services/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../BLoC/CityAddBloc/1.CityAddBloc.dart';
import '../../BLoC/CityAddBloc/2.CityAddEvent.dart';
import '../../BLoC/CityAddBloc/3.CityAddState.dart';
import '../../Services/Provider/CitiesJSON.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  late CityAddBloc _addBloc;
  final _searchController = TextEditingController();
  var _filtered = <CitiesJSON>[];

  var _rep = dependency<CitiesRepository>();
  var _provider = dependency<Provider>();

  void _search() {
    final query = _searchController.text;

    if (query.isNotEmpty) {
      _filtered = _rep.citiesJson.where((CitiesJSON city) {
        return city.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filtered = _rep.citiesJson;
    }

    _addBloc.add(SearchChangedEvent(cities: _filtered));
  }

  @override
  void didChangeDependencies() {
    _addBloc = BlocProvider.of<CityAddBloc>(context);
    _addBloc.add(AddInitEvent());
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    _search();
    _searchController.addListener(_search);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CityAddBloc, CityAddState>(
      builder: (BuildContext context, state) {
        if (state is SearchChangedState) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF51A3E0),
              title: Text('Add New City'),
            ),
            backgroundColor: Color(0xFF51A3E0).withAlpha(220),
            body: Center(
              child: Stack(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 80),
                    child: ListView.builder(
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                        itemCount: _filtered.length,
                        itemBuilder: (context, index) {
                          return Container(
                            //color: Colors.red,
                            padding: EdgeInsets.all(10),
                            child: Material(
                              borderRadius: BorderRadius.circular(25),
                              child: ListTile(
                                onTap: () async {
                                  /*log(state.cities[index].toString());
                                  var ct = City(
                                    idCity: state.cities[index].id,
                                    city: state.cities[index].name,
                                    country: state.cities[index].country,
                                    state: state.cities[index].state,
                                    longitude: state.cities[index].lon,
                                    latitude: state.cities[index].lat,
                                  );
                                  _addBloc.add(AddNewCityEvent(
                                    city: ct,
                                  ));*/
                                  var city = City(
                                    idCity: state.cities[index].id,
                                    city: state.cities[index].name,
                                    country: state.cities[index].country,
                                    state: state.cities[index].state,
                                    longitude: state.cities[index].lon,
                                    latitude: state.cities[index].lat,
                                  );
                                  await _provider.getWeather(city);
                                  _addBloc.add(AddNewCityEvent(
                                    city: city,
                                  ));
                                  Navigator.pop(
                                    context,
                                    state.cities[index].name,
                                  );
                                },
                                leading: Text(
                                  state.cities[index].id.toString(),
                                ),
                                title: Text(state.cities[index].name),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Lon: ${state.cities[index].lon}',
                                    ),
                                    Text(
                                      'Lat: ${state.cities[index].lat}',
                                    )
                                  ],
                                ),
                                subtitle: Text(
                                  'Country: ${state.cities[index].country}',
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.transparent.withOpacity(0),
                        border: OutlineInputBorder(),
                        labelText: 'Search',
                      ),
                    ),
                  ),
                  /*Container(
                    width: 250,
                    child: TextField(
                      onChanged: (String value) {
                        city = value;
                      },
                    ),
                  ),*/
                  /*const SizedBox(
                    height: 20,
                  ),
                  CupertinoButton(
                    color: const Color(0xFF51A3E0),
                    child: const Icon(CupertinoIcons.add_circled_solid),
                    onPressed: () async {
                      if (city != null) {
                        var ct = City(city: city);

                        log(ct.toString());
                        _addBloc.add(AddNewCityEvent(city: ct));
                        Navigator.pop(context, '$city');
                      }
                    },
                  ),*/
                ],
              ),
            ),
          );
        }
        return SizedBox();
      },
    );
  }
}
