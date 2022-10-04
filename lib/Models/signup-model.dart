import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import '../Auth/models/model.dart';
part 'signup-model.g.dart';

@HiveType(typeId: 129)
@JsonSerializable(includeIfNull: false)
class UserDetail extends BaseModelHive{

  @HiveField(1)
  int? user_id;

  String? first_name;
  String? surname;
  String? username;
  String? phone_number;
  String? email_address;
  String? password;


  UserDetail({
    this.email_address,this.username,this.surname,this.phone_number,this.first_name,
    this.password,this.user_id
  });

  Map<String,dynamic> toJson()=> _$UserDetailToJson(this);
  factory UserDetail.fromJson(json)=> _$UserDetailFromJson(json);
}