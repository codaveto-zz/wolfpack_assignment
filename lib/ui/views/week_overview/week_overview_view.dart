import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'week_overview_viewmodel.dart';

class WeekOverviewView extends StatelessWidget {
  const WeekOverviewView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WeekOverviewViewModel>.nonReactive(
      onModelReady: (model) => model.initialise(),
        builder: (context, model, child) {
          return Text('oi');
        },
        viewModelBuilder: () => WeekOverviewViewModel());
  }
}
