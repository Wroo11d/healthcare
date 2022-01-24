import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:healthcare/models/doctors.dart';
import '../url.dart';
import 'all_doctors.dart';
import 'package:http/http.dart'as http;

late List<Doctor> doctorList;
late List<DoctorElement> doctorSctionList;
late List<List<DoctorElement>> doc = [];


late List<DoctorsPrivatly> doctorListPrivatly;
late List<PrivateDoctor> doctorSctionListPrivatly;
late List<List<PrivateDoctor>> docP = [];

fetchDoctors() async {
  http.Response response;
  try {
    var url = Uri.parse('$baseUrl/api/PublicDoctorCategory');
    response = await http.get(url);
    var jsonModels = json.decode(response.body);
    doctorList = jsonModels
        .map<Doctor>((_modelJson) => Doctor.fromJson(_modelJson))
        .toList();
    debugPrint('length hospital ${doctorList.length}');

    for (int i = 0; i < doctorList.length; i++) {
      doctorSctionList = jsonModels[i]['PublicDoctors']
          .map<DoctorElement>((_modelJson) => DoctorElement.fromJson(_modelJson))
          .toList();

      doc.add(doctorSctionList);

      debugPrint('res hospitalSctionList length ${doctorSctionList.length}');
    }
    debugPrint('res hos length ${doc.length}');
    debugPrint('res hos  ${doc[0][0].name}');

    debugPrint("$doc.");
  } catch (error) {
    rethrow;
  }
}




fetchDoctorsPrivately() async {
  http.Response response;
  try {
    var url = Uri.parse('$baseUrl/api/PrivateDoctorHospitalCategory');
    response = await http.get(url);
    var jsonModels = json.decode(response.body);
    doctorListPrivatly = jsonModels
        .map<DoctorsPrivatly>((_modelJson) => DoctorsPrivatly.fromJson(_modelJson))
        .toList();
    debugPrint('length hospital ${doctorListPrivatly.length}');

    for (int i = 0; i < doctorListPrivatly.length; i++) {
      doctorSctionListPrivatly = jsonModels[i]['PrivateDoctors']
          .map<PrivateDoctor>((_modelJson) => PrivateDoctor.fromJson(_modelJson))
          .toList();

      docP.add(doctorSctionListPrivatly);

      debugPrint('res hospitalSctionList length ${doctorSctionListPrivatly.length}');
    }
    debugPrint('res hos length ${docP.length}');
    debugPrint('res hos  ${docP[0][0].name}');

    debugPrint("$doc.");
  } catch (error) {
    rethrow;
  }
}

class doctors extends StatelessWidget {
  bool isPublic;
  doctors(this.isPublic);
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Doctors'),
        elevation: 0,
        centerTitle: true,
      ),
      body:
          SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,

          child: ListView.builder(
            itemCount: isPublic? doctorList.length:doctorListPrivatly.length,
            itemBuilder: (context,index) {
              return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => allD(isPublic?doc:docP, index)),
                    );
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Ink.image(
                        image: const NetworkImage(
                            'https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706504?b=1&k=20&m=1312706504&s=170667a&w=0&h=IcYI9Pm-s-JyeCOgul1DfSQAqY3hVte4uXnStOXbkaw='),

                        height: 180,
                        width: 480,
                        fit: BoxFit.cover,
                      ),
                       Text(
                        '${isPublic?doctorList[index].type:doctorListPrivatly[index].type}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      ),
                    ],
                  ),
                ),
              );
            }
          ),
        ),
      ));
}
