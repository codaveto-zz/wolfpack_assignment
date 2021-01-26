import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wolfpack_assign/data/enum/icon_enum.dart';

import 'medicine.dart';

part 'moment.freezed.dart';

part 'moment.g.dart';

@freezed
abstract class Moment with _$Moment{
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory Moment({@required final String title,@required final IconEnum icon,@required final List<
      Medicine> medicineList,@required final DateTime date,@required bool isCollapsed}
  ) = _Moment;
  factory Moment.fromJson(Map<String, dynamic> json) => _$MomentFromJson(json);
}

@freezed
abstract class MomentList with _$MomentList {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory MomentList({
    @required List<Moment> momentList,
  }) = _MomentList;

  factory MomentList.fromJson(Map<String, dynamic> json) => _$MomentListFromJson(json);
}
