import 'list_of_disciplines.dart';
import 'pm_list_api_provider.dart';

class PMListRepository {
  ListOfDisciplinsProvider _docRepository = ListOfDisciplinsProvider();
  Future<Doc> getAllDisciplines() => _docRepository.getDisciplin().then((value) => value);
}
