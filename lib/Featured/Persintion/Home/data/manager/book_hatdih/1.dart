import 'package:equatable/equatable.dart';

class Book extends Equatable {
  final int? hadithnumberFirst;
  final int? hadithnumberLast;
  final int? arabicnumberFirst;
  final int? arabicnumberLast;

  const Book({
    this.hadithnumberFirst,
    this.hadithnumberLast,
    this.arabicnumberFirst,
    this.arabicnumberLast,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
    hadithnumberFirst: json['hadithnumber_first'] as int?,
    hadithnumberLast: json['hadithnumber_last'] as int?,
    arabicnumberFirst: json['arabicnumber_first'] as int?,
    arabicnumberLast: json['arabicnumber_last'] as int?,
  );

  Map<String, dynamic> toJson() => {
    'hadithnumber_first': hadithnumberFirst,
    'hadithnumber_last': hadithnumberLast,
    'arabicnumber_first': arabicnumberFirst,
    'arabicnumber_last': arabicnumberLast,
  };

  @override
  List<Object?> get props {
    return [
      hadithnumberFirst,
      hadithnumberLast,
      arabicnumberFirst,
      arabicnumberLast,
    ];
  }
}
