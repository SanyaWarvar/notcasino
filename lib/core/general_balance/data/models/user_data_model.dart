// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../../domain/entities/user_data_entity.dart';

class UserDataModel extends Equatable {
  final String username;
  final int balance;

  const UserDataModel({required this.username, required this.balance});

  factory UserDataModel.fromEntity(UserDataEntity dataEntity) =>
      UserDataModel(username: dataEntity.username, balance: dataEntity.balance);

  UserDataEntity toEntity() =>
      UserDataEntity(username: username, balance: balance);
      
  @override
  List<Object> get props => [username, balance];

  UserDataModel copyWith({
    String? username,
    int? balance,
  }) {
    return UserDataModel(
      username: username ?? this.username,
      balance: balance ?? this.balance,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'balance': balance,
    };
  }

  factory UserDataModel.fromMap(Map<String, dynamic> map) {
    return UserDataModel(
      username: map['username'] as String,
      balance: map['balance'] as int,
    );
  }
  

  @override
  bool get stringify => true;
}
