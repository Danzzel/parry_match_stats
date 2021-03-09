import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parry_match_stats/cubit/stats_cubit.dart';
import 'package:parry_match_stats/resources/stats_of_diciplins/stats_repository.dart';
import 'package:parry_match_stats/widgets/all_disciplins.dart';
import 'package:parry_match_stats/widgets/stats_disciplins.dart';

class StatsPage extends StatelessWidget {
  final String statsIndex;
  StatsPage({Key key, @required this.statsIndex}) : super(key: key);
  // final pmListRepository = PMListRepository();
  
  @override
  Widget build(BuildContext context) {
    final statsRepository = StatsRepository(statsIndex: statsIndex);
    return MaterialApp(
        home: BlocProvider<StatsCubit>(
      create: (context) => StatsCubit(statsRepository),
      child: Scaffold(
        appBar: AppBar(title: Text('PM Stats')),
        body: Container(
          child: StatsDisciplins(),
        ),
      ),
    ));
  }

  // void funkt() {
  //   doc.getDisciplin().then((value) => print(value.data[5].name));
  //   // doc.then((value) => print(value.data[0].name));
  // }
}
