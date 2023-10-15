/// Created by github.com/im-o on 10/15/2023.

import 'package:flutter/material.dart';
import 'package:google_book/features/home/home.dart';

import '../../../../../../core/core.dart';

class BodySection extends StatelessWidget {
  final GoogleBook googleBook;

  const BodySection({super.key, required this.googleBook});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleText(
          googleBook.volumeInfo?.title ?? "",
          align: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: Dimens.dp8),
        SubTitleText(
          "${googleBook.volumeInfo?.publishedDate} • "
          "${googleBook.volumeInfo?.language} • "
          "${googleBook.volumeInfo?.industryIdentifiers} • "
          "${googleBook.volumeInfo?.authors}",
          style: const TextStyle(
            fontSize: Dimens.dp14,
            color: Colors.blueGrey,
          ),
        ),
        const SizedBox(height: Dimens.dp16),
        const Divider(thickness: Dimens.dp3),
        const SizedBox(height: Dimens.dp16),
        const SubTitleText('Description'),
        const SizedBox(height: Dimens.dp16),
        RegularText(
          googleBook.volumeInfo?.description ?? "",
          align: TextAlign.justify,
          style: const TextStyle(
            color: Colors.white60,
          ),
        ),
      ],
    );
  }
}
