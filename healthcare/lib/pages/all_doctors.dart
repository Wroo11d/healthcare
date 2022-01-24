import 'package:flutter/material.dart';
import 'package:healthcare/models/doctors.dart';
import 'package:healthcare/url.dart';
import 'doctor_profile.dart';

class allD extends StatelessWidget {
  int indexing;
  List<List<dynamic>> doctorList;

  allD(this.doctorList, this.indexing, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Healthcare'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,

              child: ListView.builder(
                  itemCount: doctorList[indexing].length,
                  itemBuilder: (context, index) {
                    return Padding(
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
                                  MaterialPageRoute(
                                      builder: (context) => doctorsProfile(doctorList[indexing][index])),
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
                                          size: const Size.fromRadius(55),
                                          // Image radius
                                          child: Image.network(
                                              '$baseUrl${doctorList[indexing][index].image}',
                                              height: 100,
                                              fit: BoxFit.cover),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    '${doctorList[indexing][index].name}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                        fontFamily: 'Mate',
                                        fontSize: 24),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ));
}
