
import '../list_of_disciplines.dart';
import 'stats_provider.dart';

class StatsRepository {
  String statsIndex;
StatsRepository({this.statsIndex});
  ListStatsProvider _docRepository = ListStatsProvider();
  Future<Doc> getAllStats() => _docRepository.getStats(statsIndex).then((value) => value);

}