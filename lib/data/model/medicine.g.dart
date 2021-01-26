// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Medicine _$_$_MedicineFromJson(Map<String, dynamic> json) {
  return _$_Medicine(
    name: json['name'] as String,
    isTaken: json['is_taken'] as bool,
  );
}

Map<String, dynamic> _$_$_MedicineToJson(_$_Medicine instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('is_taken', instance.isTaken);
  return val;
}

_$_MedicineList _$_$_MedicineListFromJson(Map<String, dynamic> json) {
  return _$_MedicineList(
    medicineList: (json['medicine_list'] as List)
        ?.map((e) =>
            e == null ? null : Medicine.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_MedicineListToJson(_$_MedicineList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('medicine_list', instance.medicineList);
  return val;
}
