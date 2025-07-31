import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'searchviewbody.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: 'البحث في قايمة المتون',
                  hintStyle: TextStyle(fontSize: 15),
                  fillColor: Color(0xFFE0F7FA),
                  filled: true,
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: Colors.grey),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(Icons.arrow_right, color: Color(0xFF0097A7), size: 40),
          ),
        ],
      ),
      body: Searchviewbody(),
    );
  }
}
