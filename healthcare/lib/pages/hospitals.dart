import 'package:flutter/material.dart';
import 'all_hospitals.dart';
import 'hospital_profile.dart';

class hospitals extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
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
                    MaterialPageRoute(builder: (context) => allH()),
                  );
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
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
                      height: 180,
                      width: 480,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Cardiac',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: NetworkImage(
                        'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw='),
                    //  colorFilter: ColorFilters.greyscale,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => allH()),
                        );
                      },
                    ),
                    height: 180,
                    width: 480,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'Cardiac',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: NetworkImage(
                        'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw='),
                    // colorFilter: ColorFilters.greyscale,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => allH()),
                        );
                      },
                    ),
                    height: 180,
                    width: 480,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'Cardiac',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: NetworkImage(
                        'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw='),
                    //   colorFilter: ColorFilters.greyscale,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => allH()),
                        );
                      },
                    ),
                    height: 180,
                    width: 480,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'Cardiac',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24),
                  ),
                ],
              ),
            )
          ],
        ),
      ));
}
