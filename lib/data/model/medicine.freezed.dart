// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'medicine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Medicine _$MedicineFromJson(Map<String, dynamic> json) {
  return _Medicine.fromJson(json);
}

/// @nodoc
class _$MedicineTearOff {
  const _$MedicineTearOff();

// ignore: unused_element
  _Medicine call({@required String name, bool isTaken}) {
    return _Medicine(
      name: name,
      isTaken: isTaken,
    );
  }

// ignore: unused_element
  Medicine fromJson(Map<String, Object> json) {
    return Medicine.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Medicine = _$MedicineTearOff();

/// @nodoc
mixin _$Medicine {
  String get name;
  bool get isTaken;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MedicineCopyWith<Medicine> get copyWith;
}

/// @nodoc
abstract class $MedicineCopyWith<$Res> {
  factory $MedicineCopyWith(Medicine value, $Res Function(Medicine) then) =
      _$MedicineCopyWithImpl<$Res>;
  $Res call({String name, bool isTaken});
}

/// @nodoc
class _$MedicineCopyWithImpl<$Res> implements $MedicineCopyWith<$Res> {
  _$MedicineCopyWithImpl(this._value, this._then);

  final Medicine _value;
  // ignore: unused_field
  final $Res Function(Medicine) _then;

  @override
  $Res call({
    Object name = freezed,
    Object isTaken = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      isTaken: isTaken == freezed ? _value.isTaken : isTaken as bool,
    ));
  }
}

/// @nodoc
abstract class _$MedicineCopyWith<$Res> implements $MedicineCopyWith<$Res> {
  factory _$MedicineCopyWith(_Medicine value, $Res Function(_Medicine) then) =
      __$MedicineCopyWithImpl<$Res>;
  @override
  $Res call({String name, bool isTaken});
}

/// @nodoc
class __$MedicineCopyWithImpl<$Res> extends _$MedicineCopyWithImpl<$Res>
    implements _$MedicineCopyWith<$Res> {
  __$MedicineCopyWithImpl(_Medicine _value, $Res Function(_Medicine) _then)
      : super(_value, (v) => _then(v as _Medicine));

  @override
  _Medicine get _value => super._value as _Medicine;

  @override
  $Res call({
    Object name = freezed,
    Object isTaken = freezed,
  }) {
    return _then(_Medicine(
      name: name == freezed ? _value.name : name as String,
      isTaken: isTaken == freezed ? _value.isTaken : isTaken as bool,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_Medicine implements _Medicine {
  const _$_Medicine({@required this.name, this.isTaken}) : assert(name != null);

  factory _$_Medicine.fromJson(Map<String, dynamic> json) =>
      _$_$_MedicineFromJson(json);

  @override
  final String name;
  @override
  final bool isTaken;

  @override
  String toString() {
    return 'Medicine(name: $name, isTaken: $isTaken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Medicine &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isTaken, isTaken) ||
                const DeepCollectionEquality().equals(other.isTaken, isTaken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isTaken);

  @JsonKey(ignore: true)
  @override
  _$MedicineCopyWith<_Medicine> get copyWith =>
      __$MedicineCopyWithImpl<_Medicine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MedicineToJson(this);
  }
}

abstract class _Medicine implements Medicine {
  const factory _Medicine({@required String name, bool isTaken}) = _$_Medicine;

  factory _Medicine.fromJson(Map<String, dynamic> json) = _$_Medicine.fromJson;

  @override
  String get name;
  @override
  bool get isTaken;
  @override
  @JsonKey(ignore: true)
  _$MedicineCopyWith<_Medicine> get copyWith;
}

MedicineList _$MedicineListFromJson(Map<String, dynamic> json) {
  return _MedicineList.fromJson(json);
}

/// @nodoc
class _$MedicineListTearOff {
  const _$MedicineListTearOff();

// ignore: unused_element
  _MedicineList call({@required List<Medicine> medicineList}) {
    return _MedicineList(
      medicineList: medicineList,
    );
  }

// ignore: unused_element
  MedicineList fromJson(Map<String, Object> json) {
    return MedicineList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MedicineList = _$MedicineListTearOff();

/// @nodoc
mixin _$MedicineList {
  List<Medicine> get medicineList;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MedicineListCopyWith<MedicineList> get copyWith;
}

/// @nodoc
abstract class $MedicineListCopyWith<$Res> {
  factory $MedicineListCopyWith(
          MedicineList value, $Res Function(MedicineList) then) =
      _$MedicineListCopyWithImpl<$Res>;
  $Res call({List<Medicine> medicineList});
}

/// @nodoc
class _$MedicineListCopyWithImpl<$Res> implements $MedicineListCopyWith<$Res> {
  _$MedicineListCopyWithImpl(this._value, this._then);

  final MedicineList _value;
  // ignore: unused_field
  final $Res Function(MedicineList) _then;

  @override
  $Res call({
    Object medicineList = freezed,
  }) {
    return _then(_value.copyWith(
      medicineList: medicineList == freezed
          ? _value.medicineList
          : medicineList as List<Medicine>,
    ));
  }
}

/// @nodoc
abstract class _$MedicineListCopyWith<$Res>
    implements $MedicineListCopyWith<$Res> {
  factory _$MedicineListCopyWith(
          _MedicineList value, $Res Function(_MedicineList) then) =
      __$MedicineListCopyWithImpl<$Res>;
  @override
  $Res call({List<Medicine> medicineList});
}

/// @nodoc
class __$MedicineListCopyWithImpl<$Res> extends _$MedicineListCopyWithImpl<$Res>
    implements _$MedicineListCopyWith<$Res> {
  __$MedicineListCopyWithImpl(
      _MedicineList _value, $Res Function(_MedicineList) _then)
      : super(_value, (v) => _then(v as _MedicineList));

  @override
  _MedicineList get _value => super._value as _MedicineList;

  @override
  $Res call({
    Object medicineList = freezed,
  }) {
    return _then(_MedicineList(
      medicineList: medicineList == freezed
          ? _value.medicineList
          : medicineList as List<Medicine>,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)

/// @nodoc
class _$_MedicineList implements _MedicineList {
  const _$_MedicineList({@required this.medicineList})
      : assert(medicineList != null);

  factory _$_MedicineList.fromJson(Map<String, dynamic> json) =>
      _$_$_MedicineListFromJson(json);

  @override
  final List<Medicine> medicineList;

  @override
  String toString() {
    return 'MedicineList(medicineList: $medicineList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MedicineList &&
            (identical(other.medicineList, medicineList) ||
                const DeepCollectionEquality()
                    .equals(other.medicineList, medicineList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(medicineList);

  @JsonKey(ignore: true)
  @override
  _$MedicineListCopyWith<_MedicineList> get copyWith =>
      __$MedicineListCopyWithImpl<_MedicineList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MedicineListToJson(this);
  }
}

abstract class _MedicineList implements MedicineList {
  const factory _MedicineList({@required List<Medicine> medicineList}) =
      _$_MedicineList;

  factory _MedicineList.fromJson(Map<String, dynamic> json) =
      _$_MedicineList.fromJson;

  @override
  List<Medicine> get medicineList;
  @override
  @JsonKey(ignore: true)
  _$MedicineListCopyWith<_MedicineList> get copyWith;
}
