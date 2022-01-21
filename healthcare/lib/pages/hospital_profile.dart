import 'dart:html';

import 'package:flutter/material.dart';

class hospitalsProfile extends StatelessWidget {
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
                              image: AssetImage('assets/images/hospital1.jpg'),
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
                                'Kindi Hospital',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Baghdad',
                                    style: TextStyle(
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
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0)
                                ]),
                            child: Center(
                              child: Text(
                                'Established: 1990',
                                style: TextStyle(
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
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  child: Center(
                                    child: Text(
                                      'Open Time: 08:00:00 AM ',
                                      style: TextStyle(
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
                                      'close Time: 08:00:00 AM ',
                                      style: TextStyle(
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
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0)
                                ]),
                            child: Center(
                              child: Text(
                                'Days: All',
                                style: TextStyle(
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
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0)
                                ]),
                            child: Center(
                              child: Text(
                                'beds: 700',
                                style: TextStyle(
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
                                      'Dr mohammed goos octor graduated from university of baghdad and has degree from harvard university and ived in ressua fo so long he is married to a doctor alsp love with his and graduated from same cpollage but other majority ',
                                      style: TextStyle(
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





/*import 'dart:html';

import 'package:flutter/material.dart';

class hospitalsProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black12,
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
                              image: AssetImage('assets/images/hospital1.jpg'),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                              Colors.black12,
                              Colors.black12.withOpacity(.3)
                            ])),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Kindi Hospital',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
                              ),
                              SizedBox(
                                height: 30,
                              ),

                              /*   Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Baghdad',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),*/
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Established: 1990',
                          style: TextStyle(
                              height: 1.4,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ])),
                SliverList(
                    delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Open Time: 08:00:00 AM',
                          style: TextStyle(
                              height: 1.4,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'Close Time: 12:00:00 AM',
                          style: TextStyle(
                              height: 1.4,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ])),
                SliverList(
                    delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Days: All',
                          style: TextStyle(
                              height: 1.4,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ])),
                SliverList(
                    delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Beds: 700',
                          style: TextStyle(
                              height: 1.4,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ])),
                SliverList(
                    delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'hospital estarblished mjkh   khun rbospital estarblished mjkh  khun rbyuurb8 ospital estarblished mjkh  khun rbyuurb8 yuurb8 jguy i',
                          style: TextStyle(
                              height: 1.4,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ]))
              ],
            )
          ],
        ),
      );
}
*/