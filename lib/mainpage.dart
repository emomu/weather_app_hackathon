import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app_hackathon/colors.dart';
import 'package:weather_app_hackathon/weatherModel.dart';
import 'package:weather_app_hackathon/weatherService.dart';
import 'drawer.dart';

late int globalDerece = 0;

class Mainpage extends StatefulWidget {
  Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  List<WeatherModel?> _weathers = [];
  void _getWeatherData() async {
    _weathers = await WeatherService().getWeatherData();

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _getWeatherData();
  }

  WeatherModel? firstt() {
    if (_weathers.isEmpty) {
      print("List is empty.");
      return null;
    } else {
      // Liste boş değilse, eleman alabilirsiniz.
      WeatherModel? firstElement = _weathers.first;
      print("First element: $firstElement");
      if (firstElement != null) {
        return firstElement;
      } else {
        print("İlk element null");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    String capitalizeFirstLetter(String text) {
      if (text.isEmpty) {
        return text;
      }
      return text[0].toUpperCase() + text.substring(1);
    }

    double bADD = double.parse(firstt()!.derece);
    int bAAI = bADD.round();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blueAccent, h1],
              end: Alignment.topRight,
              begin: Alignment.topLeft),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24, top: 19),
                        child: Row(
                          children: [
                            Text(
                              '${bAAI}°',
                              style: TextStyle(
                                  fontSize: 70,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24, bottom: 29),
                        child: Row(
                          children: [
                            Text(
                              '${capitalizeFirstLetter(firstt()!.durum)}',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24, top: 35),
                        child: Row(
                          children: [
                            Text(
                              'Bugünün Nem Oranı %${firstt()!.nem}',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SizedBox(
                        width: 100,
                        height: 200,
                        child: Image.asset('images/guy-with-umbrella.png'),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 38),
              child: Container(
                  width: screenWidth * 0.9,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: double.maxFinite,
                          height: 50,
                          child: Row(
                            children: [
                              Text(
                                softWrap: true,
                                'En yüksek ${double.parse(firstt()!.max).round()}°C ve en düşük ${double.parse(firstt()!.min).round()}°C',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            width: double.infinity,
                            height: 199,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: _weathers.length,
                                itemBuilder: (context, index) {
                                  WeatherModel weather = _weathers[index]!;
                                  String anlikDerece = weather.derece;
                                  double anlikDereceDouble =
                                      double.parse(anlikDerece);
                                  int anlikDereceInt =
                                      anlikDereceDouble.round();

                                  return Card(
                                    color: Colors.blue,
                                    elevation: 0,
                                    child: Column(
                                      children: [
                                        Text(
                                          '${weather.gun}',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          width: 60,
                                          height: 90,
                                          child:
                                              Image.network('${weather.ikon}'),
                                        ),
                                        Text(
                                          '${anlikDereceInt}°',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  );
                                })),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
