import 'package:flutter/material.dart';
import 'doctor_profile.dart';

class allD extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text('Healthcare'),
        elevation: 0,
        centerTitle: true,
      ),
      body: /* ListWheelScrollView(
        itemExtent: 250,
        physics: FixedExtentScrollPhysics(),*/
          //squeeze: 1.1,
          /* onSelectedItemChanged: (index) => 
          showToast('selected item: ${index +1}'),*/
          //perspective: 0.001,
          //diameterRatio: 1.5,
          SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => doctorsProfile()),
                    );
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(55), // Image radius
                              child: Image.network(
                                  'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw=',
                                  height: 100,
                                  fit: BoxFit.cover),
                            ),
                          )
                          /* Image.network(
                            'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw=',
                            height: 100,
                            fit: BoxFit.cover,
                            
                          ),*/
                        ],
                      ),

                      /*Ink.image(
                        image: NetworkImage(
                            'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw='),
                        //   colorFilter: ColorFilters.greyscale,
                        /*child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => doctorsProfile()),
                            );
                          },
                        ),*/
                        height: 100,

                        fit: BoxFit.cover,
                      ),*/
                      Text(
                        'Dr basim',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontFamily: 'Mate',
                            fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => doctorsProfile()),
                    );
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(55), // Image radius
                              child: Image.network(
                                  'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw=',
                                  height: 100,
                                  fit: BoxFit.cover),
                            ),
                          )
                          /* Image.network(
                            'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw=',
                            height: 100,
                            fit: BoxFit.cover,
                            
                          ),*/
                        ],
                      ),

                      /*Ink.image(
                        image: NetworkImage(
                            'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw='),
                        //   colorFilter: ColorFilters.greyscale,
                        /*child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => doctorsProfile()),
                            );
                          },
                        ),*/
                        height: 100,

                        fit: BoxFit.cover,
                      ),*/
                      Text(
                        'Dr mohammed',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => doctorsProfile()),
                    );
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(55), // Image radius
                              child: Image.network(
                                  'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw=',
                                  height: 100,
                                  fit: BoxFit.cover),
                            ),
                          )
                          /* Image.network(
                            'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw=',
                            height: 100,
                            fit: BoxFit.cover,
                            
                          ),*/
                        ],
                      ),

                      /*Ink.image(
                        image: NetworkImage(
                            'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw='),
                        //   colorFilter: ColorFilters.greyscale,
                        /*child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => doctorsProfile()),
                            );
                          },
                        ),*/
                        height: 100,

                        fit: BoxFit.cover,
                      ),*/
                      Text(
                        'Dr sameera',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => doctorsProfile()),
                    );
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(55), // Image radius
                              child: Image.network(
                                  'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw=',
                                  height: 100,
                                  fit: BoxFit.cover),
                            ),
                          )
                          /* Image.network(
                            'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw=',
                            height: 100,
                            fit: BoxFit.cover,
                            
                          ),*/
                        ],
                      ),

                      /*Ink.image(
                        image: NetworkImage(
                            'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw='),
                        //   colorFilter: ColorFilters.greyscale,
                        /*child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => doctorsProfile()),
                            );
                          },
                        ),*/
                        height: 100,

                        fit: BoxFit.cover,
                      ),*/
                      Text(
                        'Cardiac',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ));
}
