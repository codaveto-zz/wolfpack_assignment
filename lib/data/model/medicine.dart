import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine.freezed.dart';

part 'medicine.g.dart';

@freezed
abstract class Medicine with _$Medicine{
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory Medicine(
  {@required final String name, bool isTaken}
  ) = _Medicine;
  factory Medicine.fromJson(Map<String, dynamic> json) => _$MedicineFromJson(json);
}

@freezed
abstract class MedicineList with _$MedicineList {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory MedicineList({
    @required List<Medicine> medicineList,
  }) = _MedicineList;

  factory MedicineList.fromJson(Map<String, dynamic> json) => _$MedicineListFromJson(json);
}
