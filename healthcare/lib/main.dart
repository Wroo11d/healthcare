import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/pages/doctors.dart';
import 'package:healthcare/pages/doctors_category.dart';
import 'package:healthcare/pages/hospitals.dart';
import 'package:healthcare/pages/hospitals_types.dart';
import 'package:healthcare/pages/ml.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override


  void initState() {
    fetchHospitals();
    fetchHospitalsPrivate();
    fetchDoctors();
    fetchDoctorsPrivately();

    super.initState();
  }

  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;

  final screens = [doctorsCategories(), ml(), hospitalsTypes()];
  final text = ['Doctors','Coming soon','Doctors'];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.healing, size: 30),
      const Icon(Icons.medical_services, size: 30),
    ];
    return Container(
      color: Colors.blue,
      child: SafeArea(
          top: false,
          child: Scaffold(
              extendBody: true,
              backgroundColor: Colors.blue,
              appBar: AppBar(
                title: Text('Healthcare/${text[index]}'),
                elevation: 0,
                centerTitle: true,
              ),
              body: screens[index],
              bottomNavigationBar: Theme(
                data: Theme.of(context)
                    .copyWith(iconTheme: IconThemeData(color: Colors.white)),
                child: CurvedNavigationBar(
                  backgroundColor: Colors.transparent,
                  color: Colors.blue,
                  height: 60,
                  animationCurve: Curves.easeInOut,
                  animationDuration: Duration(milliseconds: 300),
                  index: index,
                  items: items,
                  onTap: (index) => setState(() => this.index = index),
                ),
              ))),
    );
  }
}
