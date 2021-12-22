import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_info_record.g.dart';

abstract class UserInfoRecord
    implements Built<UserInfoRecord, UserInfoRecordBuilder> {
  static Serializer<UserInfoRecord> get serializer =>
      _$userInfoRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'banner_pic')
  String get bannerPic;

  @nullable
  String get bio;

  @nullable
  @BuiltValueField(wireName: 'street_address')
  String get streetAddress;

  @nullable
  @BuiltValueField(wireName: 'apt_suite_num')
  int get aptSuiteNum;

  @nullable
  BuiltList<String> get city;

  @nullable
  BuiltList<String> get state;

  @nullable
  int get zipcode;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserInfoRecordBuilder builder) => builder
    ..bannerPic = ''
    ..bio = ''
    ..streetAddress = ''
    ..aptSuiteNum = 0
    ..city = ListBuilder()
    ..state = ListBuilder()
    ..zipcode = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_info');

  static Stream<UserInfoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserInfoRecord._();
  factory UserInfoRecord([void Function(UserInfoRecordBuilder) updates]) =
      _$UserInfoRecord;

  static UserInfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserInfoRecordData({
  String bannerPic,
  String bio,
  String streetAddress,
  int aptSuiteNum,
  int zipcode,
}) =>
    serializers.toFirestore(
        UserInfoRecord.serializer,
        UserInfoRecord((u) => u
          ..bannerPic = bannerPic
          ..bio = bio
          ..streetAddress = streetAddress
          ..aptSuiteNum = aptSuiteNum
          ..city = null
          ..state = null
          ..zipcode = zipcode));
