import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/book_hatdih/hadith.dart';

class Api {
  final Dio dio;

  Api(this.dio);

  Future<Hadith> fetchHadith({required number}) async {
    print('Calling fetchHadith...');
    final url =
        'https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-bukhari/5.json';
    final res = await dio.get(url);

    if (res.statusCode == 200) {
      print('Response data:');
      print(res.data);
      final json = res.data is String ? jsonDecode(res.data) : res.data;
      print('Decoded JSON:');
      print(jsonEncode(json));
      // تحقق من وجود قائمة hadiths
      if (json == null || json['hadiths'] == null) {
        throw Exception('Hadiths data is missing or null');
      }
      // تحويل أول حديث في القائمة إلى كائن Hadith
      final hadithsList = json['hadiths'] as List<dynamic>;
      if (hadithsList.isEmpty) {
        throw Exception('Hadiths list is empty');
      }
      final hadithObj = Hadith.fromJson(hadithsList[0] as Map<String, dynamic>);
      print('Hadith text: ${hadithObj.text}');
      return hadithObj;
    } else {
      print('Failed with status:  [31m${res.statusCode} [0m');
      throw Exception('Failed to load hadith: ${res.statusCode}');
    }
  }
}
