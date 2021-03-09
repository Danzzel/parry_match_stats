import 'package:flutter/material.dart';
import 'package:parry_match_stats/resources/list_of_disciplines.dart';

abstract class PMListState {}
class PMListEmptyState extends PMListState {}

class PMListLoadingState extends PMListState {}

class PMListLoadedState extends PMListState {
  Doc loadedDisciplines;
  PMListLoadedState({@required this.loadedDisciplines})
      : assert(loadedDisciplines != null);
}

class PMListErrorState extends PMListState {}