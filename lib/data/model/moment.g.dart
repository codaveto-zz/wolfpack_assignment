// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Moment _$_$_MomentFromJson(Map<String, dynamic> json) {
  return _$_Moment(
    title: json['title'] as String,
    icon: _$enumDecodeNullable(_$IconEnumEnumMap, json['icon']),
    medicineList: (json['medicine_list'] as List)
        ?.map((e) =>
            e == null ? null : Medicine.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    isCollapsed: json['is_collapsed'] as bool,
  );
}

Map<String, dynamic> _$_$_MomentToJson(_$_Moment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('icon', _$IconEnumEnumMap[instance.icon]);
  writeNotNull('medicine_list', instance.medicineList);
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('is_collapsed', instance.isCollapsed);
  return val;
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$IconEnumEnumMap = {
  IconEnum.alarm: 'alarm',
  IconEnum.business: 'business',
  IconEnum.bookmark: 'bookmark',
  IconEnum.breakfast: 'breakfast',
  IconEnum.home: 'home',
  IconEnum.pharmacy: 'pharmacy',
};

_$_MomentList _$_$_MomentListFromJson(Map<String, dynamic> json) {
  return _$_MomentList(
    momentList: (json['moment_list'] as List)
        ?.map((e) =>
            e == null ? null : Moment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_MomentListToJson(_$_MomentList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('moment_list', instance.momentList);
  return val;
}
