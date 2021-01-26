// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'moment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Moment _$MomentFromJson(Map<String, dynamic> json) {
  return _Moment.fromJson(json);
}

/// @nodoc
class _$MomentTearOff {
  const _$MomentTearOff();

// ignore: unused_element
  _Moment call(
      {@required String title,
      @required IconEnum icon,
      @required List<Medicine> medicineList,
      @required DateTime date,
      @required bool isCollapsed}) {
    return _Moment(
      title: title,
      icon: icon,
      medicineList: medicineList,
      date: date,
      isCollapsed: isCollapsed,
    );
  }

// ignore: unused_element
  Moment fromJson(Map<String, Object> json) {
    return Moment.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Moment = _$MomentTearOff();

/// @nodoc
mixin _$Moment {
  String get title;
  IconEnum get icon;
  List<Medicine> get medicineList;
  DateTime get date;
  bool get isCollapsed;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MomentCopyWith<Moment> get copyWith;
}

/// @nodoc
abstract class $MomentCopyWith<$Res> {
  factory $MomentCopyWith(Moment value, $Res Function(Moment) then) =
      _$MomentCopyWithImpl<$Res>;
  $Res call(
      {String title,
      IconEnum icon,
      List<Medicine> medicineList,
      DateTime date,
      bool isCollapsed});
}

/// @nodoc
class _$MomentCopyWithImpl<$Res> implements $MomentCopyWith<$Res> {
  _$MomentCopyWithImpl(this._value, this._then);

  final Moment _value;
  // ignore: unused_field
  final $Res Function(Moment) _then;

  @override
  $Res call({
    Object title = freezed,
    Object icon = freezed,
    Object medicineList = freezed,
    Object date = freezed,
    Object isCollapsed = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      icon: icon == freezed ? _value.icon : icon as IconEnum,
      medicineList: medicineList == freezed
          ? _value.medicineList
          : medicineList as List<Medicine>,
      date: date == freezed ? _value.date : date as DateTime,
      isCollapsed:
          isCollapsed == freezed ? _value.isCollapsed : isCollapsed as bool,
    ));
  }
}

/// @nodoc
abstract class _$MomentCopyWith<$Res> implements $MomentCopyWith<$Res> {
  factory _$MomentCopyWith(_Moment value, $Res Function(_Moment) then) =
      __$MomentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      IconEnum icon,
      List<Medicine> medicineList,
      DateTime date,
      bool isCollapsed});
}

/// @nodoc
class __$MomentCopyWithImpl<$Res> extends _$MomentCopyWithImpl<$Res>
    implements _$MomentCopyWith<$Res> {
  __$MomentCopyWithImpl(_Moment _value, $Res Function(_Moment) _then)
      : super(_value, (v) => _then(v as _Moment));

  @override
  _Moment get _value => super._value as _Moment;

  @override
  $Res call({
    Object title = freezed,
    Object icon = freezed,
    Object medicineList = freezed,
    Object date = freezed,
    Object isCollapsed = freezed,
  }) {
    return _then(_Moment(
      title: title == freezed ? _value.title : title as String,
      icon: icon == freezed ? _value.icon : icon as IconEnum,
      medicineList: medicineList == freezed
          ? _value.medicineList
          : medicineList as List<Medicine>,
      date: date == freezed ? _value.date : date as DateTime,
      isCollapsed:
          isCollapsed == freezed ? _value.isCollapsed : isCollapsed as bool,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_Moment implements _Moment {
  const _$_Moment(
      {@required this.title,
      @required this.icon,
      @required this.medicineList,
      @required this.date,
      @required this.isCollapsed})
      : assert(title != null),
        assert(icon != null),
        assert(medicineList != null),
        assert(date != null),
        assert(isCollapsed != null);

  factory _$_Moment.fromJson(Map<String, dynamic> json) =>
      _$_$_MomentFromJson(json);

  @override
  final String title;
  @override
  final IconEnum icon;
  @override
  final List<Medicine> medicineList;
  @override
  final DateTime date;
  @override
  final bool isCollapsed;

  @override
  String toString() {
    return 'Moment(title: $title, icon: $icon, medicineList: $medicineList, date: $date, isCollapsed: $isCollapsed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Moment &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.medicineList, medicineList) ||
                const DeepCollectionEquality()
                    .equals(other.medicineList, medicineList)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.isCollapsed, isCollapsed) ||
                const DeepCollectionEquality()
                    .equals(other.isCollapsed, isCollapsed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(medicineList) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(isCollapsed);

  @JsonKey(ignore: true)
  @override
  _$MomentCopyWith<_Moment> get copyWith =>
      __$MomentCopyWithImpl<_Moment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MomentToJson(this);
  }
}

abstract class _Moment implements Moment {
  const factory _Moment(
      {@required String title,
      @required IconEnum icon,
      @required List<Medicine> medicineList,
      @required DateTime date,
      @required bool isCollapsed}) = _$_Moment;

  factory _Moment.fromJson(Map<String, dynamic> json) = _$_Moment.fromJson;

  @override
  String get title;
  @override
  IconEnum get icon;
  @override
  List<Medicine> get medicineList;
  @override
  DateTime get date;
  @override
  bool get isCollapsed;
  @override
  @JsonKey(ignore: true)
  _$MomentCopyWith<_Moment> get copyWith;
}

MomentList _$MomentListFromJson(Map<String, dynamic> json) {
  return _MomentList.fromJson(json);
}

/// @nodoc
class _$MomentListTearOff {
  const _$MomentListTearOff();

// ignore: unused_element
  _MomentList call({@required List<Moment> momentList}) {
    return _MomentList(
      momentList: momentList,
    );
  }

// ignore: unused_element
  MomentList fromJson(Map<String, Object> json) {
    return MomentList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MomentList = _$MomentListTearOff();

/// @nodoc
mixin _$MomentList {
  List<Moment> get momentList;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MomentListCopyWith<MomentList> get copyWith;
}

/// @nodoc
abstract class $MomentListCopyWith<$Res> {
  factory $MomentListCopyWith(
          MomentList value, $Res Function(MomentList) then) =
      _$MomentListCopyWithImpl<$Res>;
  $Res call({List<Moment> momentList});
}

/// @nodoc
class _$MomentListCopyWithImpl<$Res> implements $MomentListCopyWith<$Res> {
  _$MomentListCopyWithImpl(this._value, this._then);

  final MomentList _value;
  // ignore: unused_field
  final $Res Function(MomentList) _then;

  @override
  $Res call({
    Object momentList = freezed,
  }) {
    return _then(_value.copyWith(
      momentList: momentList == freezed
          ? _value.momentList
          : momentList as List<Moment>,
    ));
  }
}

/// @nodoc
abstract class _$MomentListCopyWith<$Res> implements $MomentListCopyWith<$Res> {
  factory _$MomentListCopyWith(
          _MomentList value, $Res Function(_MomentList) then) =
      __$MomentListCopyWithImpl<$Res>;
  @override
  $Res call({List<Moment> momentList});
}

/// @nodoc
class __$MomentListCopyWithImpl<$Res> extends _$MomentListCopyWithImpl<$Res>
    implements _$MomentListCopyWith<$Res> {
  __$MomentListCopyWithImpl(
      _MomentList _value, $Res Function(_MomentList) _then)
      : super(_value, (v) => _then(v as _MomentList));

  @override
  _MomentList get _value => super._value as _MomentList;

  @override
  $Res call({
    Object momentList = freezed,
  }) {
    return _then(_MomentList(
      momentList: momentList == freezed
          ? _value.momentList
          : momentList as List<Moment>,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_MomentList implements _MomentList {
  const _$_MomentList({@required this.momentList}) : assert(momentList != null);

  factory _$_MomentList.fromJson(Map<String, dynamic> json) =>
      _$_$_MomentListFromJson(json);

  @override
  final List<Moment> momentList;

  @override
  String toString() {
    return 'MomentList(momentList: $momentList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MomentList &&
            (identical(other.momentList, momentList) ||
                const DeepCollectionEquality()
                    .equals(other.momentList, momentList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(momentList);

  @JsonKey(ignore: true)
  @override
  _$MomentListCopyWith<_MomentList> get copyWith =>
      __$MomentListCopyWithImpl<_MomentList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MomentListToJson(this);
  }
}

abstract class _MomentList implements MomentList {
  const factory _MomentList({@required List<Moment> momentList}) =
      _$_MomentList;

  factory _MomentList.fromJson(Map<String, dynamic> json) =
      _$_MomentList.fromJson;

  @override
  List<Moment> get momentList;
  @override
  @JsonKey(ignore: true)
  _$MomentListCopyWith<_MomentList> get copyWith;
}
