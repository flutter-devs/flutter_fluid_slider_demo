import 'package:flutter/material.dart';
import 'package:flutter_fluid_slider/flutter_fluid_slider.dart';


class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  double _value1 = 0.0;
  double _value2 = 20.0;
  double _value3 = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Fluid Slider Demo"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FluidSlider(
              value: _value1,
              onChanged: (double newValue) {
                setState(() {
                  _value1 = newValue;
                });
              },
              min: 0.0,
              max: 100.0,
              sliderColor: Colors.cyan,
            ),
            SizedBox(
              height: 50.0,
            ),
            FluidSlider(
              value: _value2,
              onChanged: (double newValue) {
                setState(() {
                  _value2 = newValue;
                });
              },
              min: 0.0,
              max: 200.0,
              sliderColor: Colors.pinkAccent,
              thumbColor: Colors.amber[200],
              start: Icon(
                Icons.money_off,
                color: Colors.white,
              ),
              end: Icon(
                Icons.attach_money,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            FluidSlider(
                value: _value3,
                sliderColor: Colors.teal,
                onChanged: (double newValue) {
                  setState(() {
                    _value3 = newValue;
                  });
                },
                min: 1.0,
                max: 10.0,
                mapValueToString: (double value) {
                  List<String> numbers = ['1', '2', '3', '4', '5','6', '7', '8', '9', '10'];
                  return numbers[value.toInt() - 1];
                }),
          ],
        ),
      ),
    );
  }
}