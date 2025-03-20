// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Screen _$ScreenFromJson(Map<String, dynamic> json) => Screen(
      name: json['name'] as String?,
      slides: (json['slides'] as List<dynamic>?)
          ?.map((e) => Slide.fromJson(e as Map<String, dynamic>))
          .toList(),
      navigation: (json['navigation'] as List<dynamic>?)
          ?.map((e) => Navigation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScreenToJson(Screen instance) => <String, dynamic>{
      'name': instance.name,
      'slides': instance.slides,
      'navigation': instance.navigation,
    };
