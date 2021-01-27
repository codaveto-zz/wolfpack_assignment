import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:stacked/stacked.dart';
import 'package:wolfpack_assign/util/constants/sizes.dart';

import 'startup_viewmodel.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.nonReactive(
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: Color(0xffe6e6e6),
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Lottie.asset('assets/lottie/wolf.json'),
                  SizedBox(
                    height: CustomSize.medium,
                  ),
                  FadingText(model.welcomeMessage, style: Get.textTheme.headline6,),
                ],
              ),
            ),
          );
        },
        viewModelBuilder: () => StartupViewModel());
  }
}
