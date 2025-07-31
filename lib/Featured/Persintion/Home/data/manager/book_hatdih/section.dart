import 'package:equatable/equatable.dart';

class Section extends Equatable {
  final String? Book;

  const Section({this.Book});

  factory Section.fromJson(Map<String, dynamic> json) =>
      Section(Book: json['1'] as String?);

  Map<String, dynamic> toJson() => {'1': 1};

  @override
  List<Object?> get props => [1];
}
