import 'package:json_annotation/json_annotation.dart';

part 'navigation.g.dart';

@JsonSerializable()
class Navigation {
  String? icon;
  String? label;

  Navigation({this.icon, this.label});

  factory Navigation.fromJson(Map<String, dynamic> json) {
    return _$NavigationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NavigationToJson(this);

  Navigation copyWith({
    String? icon,
    String? label,
  }) {
    return Navigation(
      icon: icon ?? this.icon,
      label: label ?? this.label,
    );
  }
}
