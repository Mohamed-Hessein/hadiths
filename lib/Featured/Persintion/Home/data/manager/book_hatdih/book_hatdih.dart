import 'package:equatable/equatable.dart';

import 'hadith.dart';
import 'metadata.dart';

class BookHatdih extends Equatable {
  final Metadata? metadata;
  final List<Hadith>? hadiths;

  const BookHatdih({this.metadata, this.hadiths});

  factory BookHatdih.fromJson(Map<String, dynamic> json) => BookHatdih(
    metadata: json['metadata'] == null
        ? null
        : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    hadiths: (json['hadiths'] as List<dynamic>?)
        ?.map((e) => Hadith.fromJson(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'metadata': metadata?.toJson(),
    'hadiths': hadiths?.map((e) => e.toJson()).toList(),
  };

  @override
  List<Object?> get props => [metadata, hadiths];
}
