import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:stacked/stacked.dart';
import 'package:wolfpack_assign/ui/views/check_list/check_list_view.dart';
import 'package:wolfpack_assign/ui/views/week_overview/week_overview_view.dart';
import 'package:wolfpack_assign/util/constants/sizes.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) {
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.local_hospital)),
                    Tab(icon: Icon(Icons.book_rounded)),
                  ],
                ),
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
                child: TabBarView(
                  children: [
                    CheckListView(),
                    WeekOverviewView(),
                  ],
                ),
              ),
            ),
          );
        },
        viewModelBuilder: () => HomeViewModel());
  }
}
