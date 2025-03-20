import 'package:json_annotation/json_annotation.dart';

import 'screen.dart';

part 'dashbord.g.dart';

@JsonSerializable()
class Dashbord {
  List<Screen>? screens;

  Dashbord({this.screens});

  factory Dashbord.fromJson(Map<String, dynamic> json) {
    return _$DashbordFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DashbordToJson(this);

  Dashbord copyWith({
    List<Screen>? screens,
  }) {
    return Dashbord(
      screens: screens ?? this.screens,
    );
  }
}
