import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:healthcare/models/hospitals.dart';
import '../url.dart';
import 'all_hospitals.dart';
import 'package:http/http.dart' as http;
import 'hospital_profile.dart';

late List<Hosptials> hospitalsList;
late List<PublicHospital> hospitalSctionList;
late List<List<PublicHospital>> hos = [];

late List<HosptialsPrivatly> hospitalsListPrivate;
late List<PrivateHospital> hospitalSctionListPrivate;
late List<List<PrivateHospital>> hosP = [];

fetchHospitals() async {
  http.Response response;
  try {
    var url = Uri.parse('$baseUrl/api/PublicHospitalCategory');
    response = await http.get(url);
    var jsonModels = json.decode(response.body);
    hospitalsList = jsonModels
        .map<Hosptials>((_modelJson) => Hosptials.fromJson(_modelJson))
        .toList();
    debugPrint('length hospital ${hospitalsList.length}');

    for (int i = 0; i < hospitalsList.length; i++) {
      hospitalSctionList = jsonModels[i]['PublicHospitals']
          .map<PublicHospital>(
              (_modelJson) => PublicHospital.fromJson(_modelJson))
          .toList();

      hos.add(hospitalSctionList);

      debugPrint('res hospitalSctionList length ${hospitalSctionList.length}');
    }
    debugPrint('res hos length ${hos.length}');
    debugPrint('res hos  ${hos[0][0].name}');

    debugPrint("$hos.");
  } catch (error) {
    rethrow;
  }
}

fetchHospitalsPrivate() async {
  http.Response response;
  try {
    var url = Uri.parse('$baseUrl/api/PrivateHospitalCategory');
    response = await http.get(url);
    var jsonModels = json.decode(response.body);
    hospitalsListPrivate = jsonModels
        .map<HosptialsPrivatly>(
            (_modelJson) => HosptialsPrivatly.fromJson(_modelJson))
        .toList();
    debugPrint('length hospital ${hospitalsListPrivate.length}');

    for (int i = 0; i < hospitalsListPrivate.length; i++) {
      hospitalSctionListPrivate = jsonModels[i]['PrivateHospitals']
          .map<PrivateHospital>(
              (_modelJson) => PrivateHospital.fromJson(_modelJson))
          .toList();

      hosP.add(hospitalSctionListPrivate);

      debugPrint(
          'res hospitalSctionList length ${hospitalSctionListPrivate.length}');
    }
    debugPrint('res hos length ${hosP.length}');
    debugPrint('res hos  ${hosP[0][0].name}');

    debugPrint("$hos.");
  } catch (error) {
    rethrow;
  }
}

class hospitals extends StatelessWidget {
  bool isPublic;
  hospitals(this.isPublic);
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
                  itemCount: isPublic
                      ? hospitalsList.length
                      : hospitalsListPrivate.length,
                  itemBuilder: (context, index) {
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: InkWell(
                        onTap: () {
                          debugPrint('length ${index}');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => allH(
                                    isPublic ? hos : hosP, index, isPublic),
                              ));
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: NetworkImage(
                                  '$baseUrl${isPublic ? hospitalsList[index].image : hospitalsListPrivate[index].image}'),
                              height: 180,
                              width: 480,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              '${isPublic ? hospitalsList[index].type : hospitalsListPrivate[index].type}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
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
      ));
}
