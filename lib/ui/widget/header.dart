import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wolfpack_assign/util/constants/sizes.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final bool small;

  const HeaderWidget({Key key, this.title, this.small = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: small ? 0 : CustomSize.medium, bottom: small ? 0 : CustomSize.medium, left: small ? 0 : CustomSize.xs),
      child: Text(
        title,
        style: small
            ? Get.textTheme.headline6
            : Get.textTheme.headline5.copyWith(
                color: Colors.blueGrey,
              ),
      ),
    );
  }
}
