import 'dart:html';

import 'package:flutter/material.dart';

class doctorsProfile extends StatelessWidget {
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
                              image: AssetImage(
                                  'assets/images/doctorsDefault.jpg'),
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
                                'DR.Mohammed',
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
                /*SliverList(
                    delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'dr mohammed is excellent doctor graduated from university of baghdad sice he has a clinic in bla blab',
                          style: TextStyle(
                              height: 1.4,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ])),*/

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
                          'baghdad',
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
