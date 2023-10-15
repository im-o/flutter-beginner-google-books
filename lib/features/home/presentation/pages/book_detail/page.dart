/// Created by github.com/im-o on 10/14/2023.

import 'package:flutter/material.dart';

import '../../../home.dart';
import 'sections/sections.dart';

class BookDetailPage extends StatelessWidget {
  final GoogleBook googleBook;

  const BookDetailPage({super.key, required this.googleBook});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(googleBook.volumeInfo?.title ?? ''),
      ),
      body: BookDetailSection(googleBook: googleBook),
    );
  }
}
