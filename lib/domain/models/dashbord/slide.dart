import 'package:json_annotation/json_annotation.dart';

part 'slide.g.dart';

@JsonSerializable()
class Slide {
  String? description;
  String? image;
  String? title;

  Slide({this.description, this.image, this.title});

  factory Slide.fromJson(Map<String, dynamic> json) => _$SlideFromJson(json);

  Map<String, dynamic> toJson() => _$SlideToJson(this);

  Slide copyWith({
    String? description,
    String? image,
    String? title,
  }) {
    return Slide(
      description: description ?? this.description,
      image: image ?? this.image,
      title: title ?? this.title,
    );
  }
}
