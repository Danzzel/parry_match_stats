import 'dart:convert';
import 'package:parry_match_stats/constants/constants.dart';
import 'package:parry_match_stats/resources/list_of_disciplines.dart';
import 'package:http/http.dart ' as http;

class ListStatsProvider {
  

  Future<Doc> getStats(statsIndex) async {
    final response = await http
        .get(Constants.PM_MAIN_LINK + Constants.CONFIG_TREE_LINK + statsIndex);

    if (response.statusCode == 200) {
      final Doc pmListJson =
          ListOfDisciplines.fromJson(json.decode(response.body)).doc[0];
      return pmListJson;
    } else {
      throw Exception('Error featching person');
    }
  }
}
