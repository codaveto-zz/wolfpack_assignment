import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:stacked/stacked.dart';
import 'package:wolfpack_assign/data/enum/icon_enum.dart';
import 'package:wolfpack_assign/util/constants/sizes.dart';
import 'package:wolfpack_assign/util/methods/date_formatter.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                model.title,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            backgroundColor: Color(0xffe6e6e6),
            body: LoadingOverlay(
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
                              _Moment(
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
            ),
          );
        },
        viewModelBuilder: () => HomeViewModel());
  }

  Widget _getOptionalHeader(HomeViewModel model, int index) {
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

class _Moment extends ViewModelWidget<HomeViewModel> {
  const _Moment({this.index, Key key}) : super(key: key, reactive: true);

  final int index;

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    final moment = model.moments[index];
    final isTaken = moment.isTaken();
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: isTaken ? Colors.grey : Colors.white,
      child: Theme(
        data: Get.theme.copyWith(
          unselectedWidgetColor: isTaken ? Colors.white : Colors.black,
          accentColor: isTaken ? Colors.white : Colors.black,
        ),
        child: ExpansionTile(
          title: Text(
            moment.title,
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold, color: isTaken ? Colors.white : Colors.black),
          ),
          subtitle: Text(
            DateFormatter.time(moment.date),
            style: TextStyle(color: isTaken ? Colors.white : Colors.black),
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
                isTaken ? 'assets/images/check_white.png' : 'assets/images/elipse.png',
                height: 20,
              ),
            ],
          ),
          onExpansionChanged: (value) {
            model.tapMoment(index, value);
          },
          children: [],
        ),
      ),
    );
  }
}
