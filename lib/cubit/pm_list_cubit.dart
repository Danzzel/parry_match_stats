import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parry_match_stats/resources/list_of_disciplines.dart';
import 'package:parry_match_stats/resources/pm_list_repository.dart';

import 'cubit_state.dart';

class DisCubit extends Cubit<PMListState> {
  final PMListRepository docRepository;
  DisCubit(this.docRepository) : super(PMListEmptyState());
  Future<void> fetchDisciplines() async {
    try {
      emit(PMListLoadingState());
      final Doc _loadedDoc = await docRepository.getAllDisciplines();
      // print(_loadedDoc.data[1].name);
      emit(PMListLoadedState(loadedDisciplines: _loadedDoc));
    } catch (_) {
      emit(PMListErrorState());
    }
  }
}
