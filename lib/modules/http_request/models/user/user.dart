import 'package:json_annotation/json_annotation.dart';
import '/modules/http_request/models/address/address.dart';
import '/modules/http_request/models/company/company.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;
  final Address address;
  final Company company;

  User({
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
    required this.address,
    required this.company,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
