import 'package:flutter/material.dart';
import 'package:wolfpack_assign/util/constants/fonts.dart';

class InfoWidget extends StatelessWidget {
  final keyField, valueField;
  final valueWidget;

  const InfoWidget({Key key, @required this.keyField, this.valueField, this.valueWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          keyField.toString(),
          style: CustomFont.bodyText.copyWith(fontWeight: valueWidget == null ? FontWeight.bold : FontWeight.normal),
        ),
        valueWidget ??
            Text(
              valueField.toString(),
              style: CustomFont.bodyText,
            )
      ],
    );
  }
}
