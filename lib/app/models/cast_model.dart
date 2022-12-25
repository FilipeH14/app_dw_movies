// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CastModel {
  final String name;
  final String image;
  final String character;

  CastModel({
    required this.name,
    required this.image,
    required this.character,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'image': image,
      'character': character,
    };
  }

  factory CastModel.fromMap(Map<String, dynamic> map) {
    return CastModel(
      name: map['name'] as String,
      image: map['image'] as String,
      character: map['character'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CastModel.fromJson(String source) => CastModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
