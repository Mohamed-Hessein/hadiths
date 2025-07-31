import 'package:equatable/equatable.dart';

import '1.dart';

class SectionDetail extends Equatable {
  final Book? book1;

  const SectionDetail({this.book1});

  factory SectionDetail.fromJson(Map<String, dynamic> json) => SectionDetail(
    book1: json['hadiths'] == null
        ? null
        : Book.fromJson(json['hadiths'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {'hadiths': book1?.toJson()};

  @override
  List<Object?> get props => [book1];
}
