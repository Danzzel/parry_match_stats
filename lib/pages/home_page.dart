import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parry_match_stats/resources/pm_list_repository.dart';
import 'package:parry_match_stats/widgets/all_disciplins.dart';
import 'package:parry_match_stats/cubit/pm_list_cubit.dart';

class HomePage extends StatelessWidget {
  final docRepository = PMListRepository();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider<DisCubit>(
      create: (context) => DisCubit(docRepository),
      child: Scaffold(
        appBar: AppBar(title: Text('PM Stats')),
        body: Container(
          child: AllDisciplins(),
        ),
      ),
    ));
  }

  // void funkt() {
  //   doc.getDisciplin().then((value) => print(value.data[5].name));
  //   // doc.then((value) => print(value.data[0].name));
  // }
}