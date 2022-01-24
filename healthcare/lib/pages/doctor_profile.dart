// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:healthcare/models/doctors.dart';

import '../url.dart';

class doctorsProfile extends StatelessWidget {
  dynamic doctorList;
  doctorsProfile(this.doctorList);
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  expandedHeight: 450,
                  backgroundColor: Colors.white,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  '$baseUrl${doctorList.image}'),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                              Colors.white,
                              Colors.white.withOpacity(.3)
                            ])),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '${doctorList.name}',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '${doctorList.location}',
                                    style: const TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SliverList(
                      delegate: SliverChildListDelegate([
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            //height: 100,

                            //width: 1000,
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                //border: Border.all(width: 3),
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade500,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 10.0,
                                      spreadRadius: 0.7),
                                  const BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0)
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  child: Center(
                                    child: Text(
                                      'Open Time: ${doctorList.openTime}',
                                      style: const TextStyle(
                                          height: 1.4,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, bottom: 20),
                                    child: Text(
                                      'Close Time: ${doctorList.closeTime} ',
                                      style: const TextStyle(
                                          height: 1.4,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ])),
                ),
                Expanded(
                  child: SliverList(
                      delegate: SliverChildListDelegate([
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 100,
                            //width: 1000,
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                //border: Border.all(width: 3),
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade500,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 10.0,
                                      spreadRadius: 0.7),
                                  const BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0)
                                ]),
                            child: Center(
                              child: Text(
                                'Days: ${doctorList.days}',
                                style: const TextStyle(
                                    height: 1.4,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ])),
                ),
                Expanded(
                  child: SliverList(
                      delegate: SliverChildListDelegate([
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            //height: 100,

                            //width: 1000,
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                //border: Border.all(width: 3),
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade500,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 10.0,
                                      spreadRadius: 0.7),
                                  // ignore: prefer_const_constructors
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0)
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Center(
                                    child: Text(
                                      '${doctorList.description} ',
                                      style: const TextStyle(
                                          height: 1.4,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ])),
                ),
              ],
            )
          ],
        ),
      );
}
