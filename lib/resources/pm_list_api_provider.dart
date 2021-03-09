import 'dart:convert';


import 'package:parry_match_stats/constants/constants.dart';
import 'package:parry_match_stats/resources/list_of_disciplines.dart';
import 'package:http/http.dart ' as http;

class ListOfDisciplinsProvider {
  Future<Doc> getDisciplin() async {
    final response = await http.get(
        Constants.PM_MAIN_LINK+Constants.CONFIG_SPORT_LINK);
    
    if (response.statusCode == 200) {
      final Doc pmListJson =
          ListOfDisciplines.fromJson(json.decode(response.body)).doc[0];

      // print(response.body);
      print(pmListJson);
      return pmListJson;
    } else {
      throw Exception('Error featching person');
    }
  }
}
