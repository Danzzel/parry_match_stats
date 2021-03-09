import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parry_match_stats/cubit/cubit_state.dart';

import 'package:parry_match_stats/cubit/stats_cubit.dart';

class StatsDisciplins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final StatsCubit disCubit = context.read<StatsCubit>();
    disCubit.fetchDisciplines();
    return BlocBuilder<StatsCubit, PMListState>(
      builder: (context, state) {
        if (state is PMListEmptyState) {
          return Center(
            child: Text('No Data'),
          );
        }
        if (state is PMListLoadingState) {
          return CircularProgressIndicator();
        }
        if (state is PMListLoadedState) {
          return ListView.builder(
            itemCount: state.loadedDisciplines.data[0].realcategories.length,
            itemBuilder: (context, index) =>
                //  Container(
                //   color: Colors.black87,
                //   child:
                Container(
              width: 300,
              padding: EdgeInsets.all(4),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Text(
                '${state.loadedDisciplines.data[0].realcategories[index].name}',
                style: TextStyle(color: Colors.black87),
              ),
            ),
            // ),
          );
        }
        if (state is PMListErrorState) {
          return Center(
            child: Text(
              'Error fetching data',
              style: TextStyle(fontSize: 20),
            ),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
