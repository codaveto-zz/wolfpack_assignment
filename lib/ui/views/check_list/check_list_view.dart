import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:stacked/stacked.dart';
import 'package:wolfpack_assign/data/enum/icon_enum.dart';
import 'package:wolfpack_assign/data/model/medicine.dart';
import 'package:wolfpack_assign/data/model/moment.dart';
import 'package:wolfpack_assign/hijacked/hijack_expansion_tile.dart';
import 'package:wolfpack_assign/util/constants/sizes.dart';
import 'package:wolfpack_assign/util/methods/date_formatter.dart';

import 'check_list_viewmodel.dart';

class CheckListView extends StatelessWidget {
  const CheckListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CheckListViewModel>.reactive(
      onModelReady: (model) => model.initialise(),
        builder: (context, model, child) {
          return LoadingOverlay(
            progressIndicator: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                ),
                SizedBox(
                  height: CustomSize.large,
                ),
                FadingText(
                  model.loadingText,
                  style: Get.textTheme.headline6,
                ),
              ],
            ),
            opacity: 1,
            isLoading: model.isBusy,
            child: model.moments != null && model.moments.isNotEmpty
                ? Padding(
              padding: const EdgeInsets.all(CustomSize.medium),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _getOptionalHeader(model, index),
                      _MomentWidget(
                        index: index,
                      ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: CustomSize.small,
                  );
                },
                itemCount: model.moments?.length ?? 0,
              ),
            )
                : Center(
              child: Text(
                'No moments for you',
                style: Get.textTheme.headline6,
              ),
            ),
          );
        },
        viewModelBuilder: () => CheckListViewModel());
  }

  Widget _getOptionalHeader(CheckListViewModel model, int index) {
    if (model.showHeader(index)) {
      return Padding(
        padding: const EdgeInsets.only(top: CustomSize.medium, bottom: CustomSize.medium, left: CustomSize.xs),
        child: Text(
          model.getHeaderText(index),
          style: Get.textTheme.headline5.copyWith(
            color: Colors.blueGrey,
          ),
        ),
      );
    } else {
      return SizedBox.shrink();
    }
  }
}

class _MomentWidget extends ViewModelWidget<CheckListViewModel> {
  const _MomentWidget({this.index, Key key}) : super(key: key, reactive: true);

  final int index;

  @override
  Widget build(BuildContext context, CheckListViewModel model) {
    final moment = model.moments[index];
    final isOpen = moment.isOpen();
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(CustomSize.cardRadius),
      ),
      color: isOpen ? Color(0xff49888f) : Colors.white,
      child: Theme(
        data: Get.theme.copyWith(
          unselectedWidgetColor: isOpen ? Colors.white : Colors.black,
          accentColor: isOpen ? Colors.white : Colors.black,
        ),
        child: HijackedExpansionTile(
          title: Text(
            moment.title,
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold, color: isOpen ? Colors.white : Colors.black),
          ),
          subtitle: Text(
            DateFormatter.time(moment.date),
            style: TextStyle(color: isOpen ? Colors.white : Colors.black),
          ),
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              moment.icon.image,
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                isOpen ? 'assets/images/check_white.png' : 'assets/images/elipse.png',
                height: CustomSize.iconHeight,
              ),
            ],
          ),
          onExpansionChanged: (value) {
            model.tapMoment(index, value);
          },
          children: _getMedicines(moment, index),
        ),
      ),
    );
  }

  List<Widget> _getMedicines(Moment moment, int momentIndex) {
    List<Widget> medicines = [];
    bool first = true;
    for (Medicine medicine in moment.medicineList) {
      medicines.add(_MedicineWidget(
          medicine: medicine, first: first, ofMany: moment.medicineList.length > 1, momentIndex: momentIndex));
      first = false;
    }
    if (medicines.isEmpty)
      medicines.add(Column(
        children: [
          _greenBorder(),
          Padding(
            padding: const EdgeInsets.all(CustomSize.mediumLarge),
            child: Text(
              'No medicines today!',
              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
            ),
          ),
        ],
      ));
    return medicines;
  }
}

class _MedicineWidget extends ViewModelWidget<CheckListViewModel> {
  _MedicineWidget({this.medicine, this.first, this.ofMany, this.momentIndex, Key key})
      : super(key: key, reactive: true);

  final Medicine medicine;
  final bool first, ofMany;
  final int momentIndex;

  @override
  Widget build(BuildContext context, CheckListViewModel model) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(first && ofMany ? 0 : CustomSize.cardRadius),
          bottomRight: Radius.circular(first && ofMany ? 0 : CustomSize.cardRadius),
        ),
      ),
      child: Column(
        children: [
          this.first ? _greenBorder() : SizedBox.shrink(),
          ListTile(
            onTap: () {
              model.tapMedicine(medicine, momentIndex);
            },
            title: Text(medicine.name),
            subtitle: Text(medicine.amount),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  medicine.isTaken ? 'assets/images/check_green.png' : 'assets/images/elipse.png',
                  height: CustomSize.iconHeight,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Container _greenBorder() {
  return Container(
    height: 4,
    color: Color(0xff90be51),
  );
}


