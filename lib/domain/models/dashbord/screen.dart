import 'package:json_annotation/json_annotation.dart';

import 'navigation.dart';
import 'slide.dart';

part 'screen.g.dart';

@JsonSerializable()
class Screen {
  String? name;
  List<Slide>? slides;
  List<Navigation>? navigation;

  Screen({this.name, this.slides, this.navigation});

  factory Screen.fromJson(Map<String, dynamic> json) {
    return _$ScreenFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ScreenToJson(this);

  Screen copyWith({
    String? name,
    List<Slide>? slides,
    List<Navigation>? navigation,
  }) {
    return Screen(
      name: name ?? this.name,
      slides: slides ?? this.slides,
      navigation: navigation ?? this.navigation,
    );
  }
}
