import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app_hackathon/colors.dart';
import 'drawer.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24, top: 19),
                      child: Row(
                        children: [
                          Text(
                            '17°',
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
                            'Yağmur Geçişi',
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
                            '17° / 8° Hissedilen sıcaklık 17°',
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
                height: screenHeight * 0.32,
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
                        child: const Row(
                          children: [
                            Text(
                              softWrap: true,
                              'Az sağanak. En yüksek 16 - 18°C ve en\ndüşük 6 - 8°C',
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
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    '17:00',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 90,
                                    child: Image.asset(
                                      'images/cloudy.png',
                                      width: 60,
                                    ),
                                  ),
                                  const Text(
                                    '16°',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    '17:00',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 90,
                                    child: Image.asset(
                                      'images/cloudy.png',
                                      width: 60,
                                    ),
                                  ),
                                  const Text(
                                    '16°',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    '17:00',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 90,
                                    child: Image.asset(
                                      'images/cloudy.png',
                                      width: 60,
                                    ),
                                  ),
                                  const Text(
                                    '16°',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    '17:00',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 90,
                                    child: Image.asset(
                                      'images/cloudy.png',
                                      width: 60,
                                    ),
                                  ),
                                  const Text(
                                    '16°',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    '17:00',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 90,
                                    child: Image.asset(
                                      'images/cloudy.png',
                                      width: 60,
                                    ),
                                  ),
                                  const Text(
                                    '16°',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    '17:00',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 90,
                                    child: Image.asset(
                                      'images/cloudy.png',
                                      width: 60,
                                    ),
                                  ),
                                  const Text(
                                    '16°',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),

    );
  }
}
