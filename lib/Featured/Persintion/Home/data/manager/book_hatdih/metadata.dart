import 'package:equatable/equatable.dart';

import 'section.dart';
import 'section_detail.dart';

class Metadata extends Equatable {
  final String? name;
  final Section? section;
  final SectionDetail? sectionDetail;

  const Metadata({this.name, this.section, this.sectionDetail});

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
    name: json['name'] as String?,
    section: json['section'] == null
        ? null
        : Section.fromJson(json['section'] as Map<String, dynamic>),
    sectionDetail: json['section_detail'] == null
        ? null
        : SectionDetail.fromJson(
            json['section_detail'] as Map<String, dynamic>,
          ),
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'section': section?.toJson(),
    'section_detail': sectionDetail?.toJson(),
  };

  @override
  List<Object?> get props => [name, section, sectionDetail];
}
