import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:wolfpack_assign/data/model/medicine.dart';
import 'package:wolfpack_assign/data/model/moment.dart';
import 'package:wolfpack_assign/ui/widget/header.dart';
import 'package:wolfpack_assign/ui/widget/info_widget.dart';
import 'package:wolfpack_assign/util/constants/fonts.dart';
import 'package:wolfpack_assign/util/constants/sizes.dart';
import 'package:wolfpack_assign/util/methods/date_formatter.dart';

import 'week_overview_viewmodel.dart';

class WeekOverviewView extends StatelessWidget {
  const WeekOverviewView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WeekOverviewViewModel>.nonReactive(
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) {
          return Padding(
            padding: const EdgeInsets.all(CustomSize.medium),
            child: ListView.builder(
              itemCount: model.weeklyMoments.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return _topView(model);
                } else {
                  index -= 1;
                  final moment = model.weeklyMoments[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      model.showHeader(index)
                          ? Padding(
                              padding: const EdgeInsets.symmetric(vertical: CustomSize.xs),
                              child: HeaderWidget(
                                title: DateFormatter.header(moment.date),
                                small: true,
                              ),
                            )
                          : SizedBox.shrink(),
                      ..._getMedicines(moment)
                    ],
                  );
                }
              },
            ),
          );
        },
        viewModelBuilder: () => WeekOverviewViewModel());
  }

  List<Widget> _getMedicines(Moment moment) {
    List<Widget> medicines = [];
    for (Medicine medicine in moment.medicineList) {
      medicines.add(Padding(
        padding: const EdgeInsets.only(top: CustomSize.xs, bottom: CustomSize.small),
        child: InfoWidget(
          keyField: medicine.name,
          valueWidget: medicine.isTaken
              ? Icon(
                  Icons.check_circle_outline,
                  size: CustomSize.iconHeight,
                )
              : Icon(
                  Icons.radio_button_unchecked,
                  size: CustomSize.iconHeight,
                ),
        ),
      ));
    }
    if (medicines.isEmpty)
      medicines.add(Padding(
        padding: const EdgeInsets.all(CustomSize.mediumLarge),
        child: Text(
          'Geen medicijnen vandaag!',
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
        ),
      ));
    return medicines;
  }

  Column _topView(WeekOverviewViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Wekelijks Overzicht',
          style: Get.textTheme.headline6,
        ),
        _spacer(size: CustomSize.xs),
        Text(
          DateFormatter.header(model.weekStart) +
              ' t/m ' +
              DateFormatter.header(model.weekStart.add(Duration(days: 6))),
          style: Get.textTheme.subtitle2.copyWith(color: Colors.grey),
        ),
        _spacer(),
        Text(
          model.welcomeText,
          style: CustomFont.bodyText,
        ),
        _spacer(),
        Divider(),
        _spacer(),
        InfoWidget(keyField: 'Totaal aantal', valueField: model.totalMedicines),
        InfoWidget(keyField: 'Opgesnoept', valueField: model.totalTaken),
        InfoWidget(keyField: 'Nog over', valueField: model.totalMedicines - model.totalTaken),
        _spacer(),
        Divider(),
      ],
    );
  }

  SizedBox _spacer({double size}) {
    return SizedBox(
      height: size ?? CustomSize.small,
    );
  }
}
