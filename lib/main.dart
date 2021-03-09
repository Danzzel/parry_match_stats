import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:parry_match_stats/pages/home_page.dart';


import 'cubit/pm_list_cubit.dart';
import 'resources/pm_list_repository.dart';

void main() {
  runApp(PMStats());
}

class PMStats extends StatelessWidget {
  // final pmListRepository = PMListRepository();
  final docRepository = PMListRepository();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider<DisCubit>(
      create: (context) => DisCubit(docRepository),
      child: Scaffold(
        appBar: AppBar(title: Text('PM Stats')),
        body: Container(
          child: HomaPage(),
        ),
      ),
    ));
  }

  // void funkt() {
  //   doc.getDisciplin().then((value) => print(value.data[5].name));
  //   // doc.then((value) => print(value.data[0].name));
  // }
}
