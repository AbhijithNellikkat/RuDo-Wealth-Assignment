// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashbord.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dashbord _$DashbordFromJson(Map<String, dynamic> json) => Dashbord(
      screens: (json['screens'] as List<dynamic>?)
          ?.map((e) => Screen.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DashbordToJson(Dashbord instance) => <String, dynamic>{
      'screens': instance.screens,
    };
