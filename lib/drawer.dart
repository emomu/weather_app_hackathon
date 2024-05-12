import 'package:flutter/material.dart';
import 'package:weather_app_hackathon/colors.dart';
import 'package:weather_app_hackathon/mainpage.dart';

class DrawerM extends StatefulWidget {
  const DrawerM({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DrawerM> createState() => _DrawerMState();
}

class _DrawerMState extends State<DrawerM> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    Mainpage(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;

    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 20,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          color: Colors.white,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueAccent, h1],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight),
          ),
        ),
        toolbarHeight: ekranYuksekligi / 10,
        title: Row(
          children: [
            const Text(
              "Ankara",
              style: TextStyle(
                color: Colors.white,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0.5, 0.5),
                    blurRadius: 1.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.navigation,
              color: Colors.white,
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(),
                  // Biraz boşluk ekledik
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hoşgeldiniz',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5), // Sağdan boşluk
                            child: IconButton(
                              icon: Icon(Icons.settings),
                              onPressed: () {
                                // Ayarlar düğmesinin basılma olayı
                              },
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5), // Sağdan boşluk
                            child: IconButton(
                              icon: Icon(Icons.search),
                              onPressed: () {
                                // Arama düğmesinin basılma olayı
                              },
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: h1,
              ),
              title: const Text('Anasayfa'),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
