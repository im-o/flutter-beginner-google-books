/// Created by github.com/im-o on 10/14/2023.

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../home.dart';

class BookImage extends StatelessWidget {
  final GoogleBook googleBook;

  const BookImage({super.key, required this.googleBook});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: googleBook.volumeInfo?.imageLinks?.thumbnail == null
              ? _emptyImage(null)
              : CachedNetworkImage(
                  imageUrl: googleBook.volumeInfo?.imageLinks?.thumbnail ?? '',
                  placeholder: (context, url) => _emptyImage(
                    const CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => _emptyImage(
                    const Icon(Icons.error),
                  ),
                ),
        ),
      ],
    );
  }

  Widget _emptyImage(Widget? widget) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        height: constraints.maxWidth > 900 ? 300 : 150,
        child: Container(
          alignment: Alignment.center,
          child: widget ?? const Text('No Image'),
        ),
      );
    });
  }
}
