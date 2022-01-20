import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/pages/hospitals.dart';

class hospitalsTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Material(
                  color: Colors.blue,
                  elevation: 8,
                  /*shape: CircleBorder(),*/
                  borderRadius: BorderRadius.circular(28),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => hospitals()),
                      );
                    },
                    child:
                        Stack(alignment: Alignment.center, children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.rectangle),
                        /*child: Column(
                                   mainAxisSize: MainAxisSize.min,
                                   children: [*/
                        child: Ink.image(
                          image: NetworkImage(
                              'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw='),
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        /*SizedBox(
                                       height: 6,
                                     ),
                                     Text(
                                       'Public',
                                       style: TextStyle(fontSize: 32, color: Colors.white),
                                     ),
                                     SizedBox(
                                       height: 6,
                                     )*/
                      ),
                      Text(
                        'Cardiac',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      )
                    ]),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Material(
                color: Colors.blue,
                elevation: 8,
                /*shape: CircleBorder(),*/
                borderRadius: BorderRadius.circular(30),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent, shape: BoxShape.rectangle),
                    /*child: Column(
           mainAxisSize: MainAxisSize.min,
           children: [*/
                    child: Ink.image(
                      image: NetworkImage(
                          'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw='),
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    /*SizedBox(
               height: 6,
             ),
             Text(
               'Public',
               style: TextStyle(fontSize: 32, color: Colors.white),
             ),
             SizedBox(
               height: 6,
             )*/
                  ),
                )),
          ],
        ),
      );
}
