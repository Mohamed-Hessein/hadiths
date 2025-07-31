import 'package:equatable/equatable.dart';

class Reference extends Equatable {
  final int? book;
  final int? hadith;

  const Reference({this.book, this.hadith});

  factory Reference.fromJson(Map<String, dynamic> json) =>
      Reference(book: json['book'] as int?, hadith: json['hadith'] as int?);

  Map<String, dynamic> toJson() => {'book': book, 'hadith': hadith};

  @override
  List<Object?> get props => [book, hadith];
}
