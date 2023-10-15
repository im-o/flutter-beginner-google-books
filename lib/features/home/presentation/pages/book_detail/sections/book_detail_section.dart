/// Created by github.com/im-o on 10/15/2023.

import 'package:flutter/material.dart';

import '../../../../../../core/core.dart';
import '../../../../home.dart';
import 'body_section.dart';
import 'header_section.dart';

class BookDetailSection extends StatelessWidget {
  final GoogleBook googleBook;

  const BookDetailSection({super.key, required this.googleBook});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(Dimens.dp16),
        child: Column(
          children: [
            HeaderSection(googleBook: googleBook),
            const SizedBox(height: Dimens.dp16),
            BodySection(googleBook: googleBook),
            const SizedBox(height: Dimens.dp16),
          ],
        ),
      ),
    );
  }
}
