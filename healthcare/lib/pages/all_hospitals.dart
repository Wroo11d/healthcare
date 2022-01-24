import 'package:flutter/material.dart';
import 'package:healthcare/models/hospitals.dart';
import '../url.dart';
import 'doctor_profile.dart';
import 'hospital_profile.dart';

class allH extends StatelessWidget {
  int indexing;
  List<List<dynamic>> hospitalsLis;
bool isPublic;
  // Hospital hospitalsLis;
  allH(this.hospitalsLis, this.indexing,this.isPublic, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('All hospitals'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.builder(
                    itemCount: hospitalsLis[indexing].length,
                    itemBuilder: (context, index) {
                      return Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => hospitalsProfile(hospitalsLis[indexing][index])),
                            );
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    // Image border
                                    child: SizedBox.fromSize(
                                      size: const Size.fromRadius(55),
                                      // Image radius
                                      child: Image.network(
                                          '$baseUrl${hospitalsLis[indexing][index].image}',
                                          height: 100,
                                          fit: BoxFit.cover),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                '${hospitalsLis[indexing][index].name}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontFamily: 'Mate',
                                    fontSize: 24),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ));
}
