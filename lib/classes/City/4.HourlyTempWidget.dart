import 'package:flutter/material.dart';
import '../../Pages/HomePage/1.HomePage.dart';
import '../../../Services/DB/model.dart';

class HourlyWidget extends StatefulWidget {
  final City city;
  const HourlyWidget({
    required this.city,
    Key? key,
  }) : super(key: key);

  @override
  _HourlyWidgetState createState() => _HourlyWidgetState();
}

class _HourlyWidgetState extends State<HourlyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 36,
        itemBuilder: (cont, ind) => Container(
          padding: EdgeInsets.only(
            right: 5,
            left: 5,
          ),
          child: Material(
            borderRadius: BorderRadius.circular(15),
            color: Colors.lightBlueAccent.withOpacity(0.4),
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${widget.city.list[ind].date!}',
                    style: TextStyle(
                      fontSize: 18,
                      color: fontColor,
                    ),
                  ),
                  Text(
                    '${widget.city.list[ind].temp!} \u00B0C',
                    style: TextStyle(
                      fontSize: 18,
                      color: fontColor,
                    ),
                  ),
                  Image.network(
                    '${widget.city.list[ind].icon!}',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
