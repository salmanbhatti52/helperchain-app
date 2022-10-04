// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup-model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDetailAdapter extends TypeAdapter<UserDetail> {
  @override
  final int typeId = 129;

  @override
  UserDetail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserDetail(
      user_id: fields[1] as int?,
    )..id = fields[0] as String?;
  }

  @override
  void write(BinaryWriter writer, UserDetail obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.user_id)
      ..writeByte(0)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) => UserDetail(
      email_address: json['email_address'] as String?,
      username: json['username'] as String?,
      surname: json['surname'] as String?,
      phone_number: json['phone_number'] as String?,
      first_name: json['first_name'] as String?,
      password: json['password'] as String?,
      user_id: json['user_id'] as int?,
    )..id = json['id'] as String?;

Map<String, dynamic> _$UserDetailToJson(UserDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user_id', instance.user_id);
  writeNotNull('first_name', instance.first_name);
  writeNotNull('surname', instance.surname);
  writeNotNull('username', instance.username);
  writeNotNull('phone_number', instance.phone_number);
  writeNotNull('email_address', instance.email_address);
  writeNotNull('password', instance.password);
  return val;
}
