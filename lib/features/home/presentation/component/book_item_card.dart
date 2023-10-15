/// Created by github.com/im-o on 10/14/2023.

import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../home.dart';

class BookItemCard extends StatelessWidget {
  final GoogleBook googleBook;
  final Function onTapBook;

  const BookItemCard({
    super.key,
    required this.googleBook,
    required this.onTapBook,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.dp8),
        ),
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: BookImage(googleBook: googleBook),
      ),
      onTap: () {
        onTapBook();
      },
    );
  }
}
