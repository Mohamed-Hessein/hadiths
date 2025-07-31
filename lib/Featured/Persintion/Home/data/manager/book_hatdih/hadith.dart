import 'package:equatable/equatable.dart';

import 'reference.dart';

class Hadith extends Equatable {
  final int? hadithnumber;
  final int? arabicnumber;
  final String? text;
  final List<dynamic>? grades;
  final Reference? reference;

  const Hadith({
    this.hadithnumber,
    this.arabicnumber,
    this.text,
    this.grades,
    this.reference,
  });

  factory Hadith.fromJson(Map<String, dynamic> json) => Hadith(
    hadithnumber: json['hadithnumber'] as int?,
    arabicnumber: json['arabicnumber'] as int?,
    text: json['text'] as String?,
    grades: json['grades'] as List<dynamic>?,
    reference: json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'hadithnumber': hadithnumber,
    'arabicnumber': arabicnumber,
    'text': text,
    'grades': grades,
    'reference': reference?.toJson(),
  };

  @override
  List<Object?> get props {
    return [hadithnumber, arabicnumber, text, grades, reference];
  }
}
