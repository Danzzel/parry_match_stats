import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parry_match_stats/resources/list_of_disciplines.dart';
import 'package:parry_match_stats/resources/stats_of_diciplins/stats_repository.dart';

import 'cubit_state.dart';

class StatsCubit extends Cubit<PMListState> {
  final StatsRepository docRepository;
  int indexStats;
  StatsCubit(this.docRepository) : super(PMListEmptyState());
  Future<void> fetchDisciplines() async {
    try {
      emit(PMListLoadingState());
      final Doc _loadedDoc = await docRepository.getAllStats();
      // print(_loadedDoc.data[1].name);
      emit(PMListLoadedState(loadedDisciplines: _loadedDoc));
    } catch (_) {
      emit(PMListErrorState());
    }
  }
}
