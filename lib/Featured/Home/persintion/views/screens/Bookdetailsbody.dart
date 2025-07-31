import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/Bookpagebody.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/book_hatdih/1.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/book_hatdih/api.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/book_hatdih/hadith.dart';
import 'package:wazker/Featured/utils/AppColors.dart';

class Bookdetailsbody extends StatelessWidget {
  Bookdetailsbody({super.key});
  Book? book;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            '',
            style: TextStyle(
              color: Appcolors.KText,
              fontSize: 25,
              fontFamily: 'Cairo',
            ),
          ),
          SizedBox(height: 24),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Color(0xFFDFF3F5),
                    ),
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return TextPdf(5, Api(Dio()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextPdf extends StatelessWidget {
  TextPdf(this.number, this.api);

  int? number;
  Api api;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Hadith>(
      future: api?.fetchHadith(number: number),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('حدث خطأ: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          return Center(child: Text('لا يوجد حديث'));
        }
        final hadith = snapshot.data!;
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 35),
              child: Text(
                style: TextStyle(
                  fontFamily: 'Cairo',
                  color: Appcolors.Kprimiry,
                ),
                softWrap: true,

                hadith.text ?? '',
              ),
            ),
          ],
        );
      },
    );
  }
}
