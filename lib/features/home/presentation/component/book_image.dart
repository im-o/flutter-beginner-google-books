/// Created by github.com/im-o on 10/14/2023.

import 'package:flutter/material.dart';
import 'package:google_book/features/home/data/data.dart';

class BookImage extends StatelessWidget {
  final GoogleBook googleBook;

  const BookImage({super.key, required this.googleBook});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: googleBook.volumeInfo?.imageLinks?.thumbnail == null
              ? const Icon(Icons.book)
              : Image.network(
            googleBook.volumeInfo?.imageLinks?.thumbnail ?? '',
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
