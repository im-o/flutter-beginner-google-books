/// Created by github.com/im-o on 10/15/2023.

import 'package:flutter/material.dart';
import 'package:google_book/features/home/home.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/core.dart';

class BodySection extends StatelessWidget {
  final GoogleBook googleBook;

  const BodySection({super.key, required this.googleBook});

  @override
  Widget build(BuildContext context) {
    String? authors = googleBook.volumeInfo?.authors?.join(', ');
    return Column(
      children: [
        TitleText(
          googleBook.volumeInfo?.title ?? '',
          align: TextAlign.center,
        ),
        const SizedBox(height: Dimens.dp8),
        SubTitleText(
          googleBook.volumeInfo?.subtitle ?? '-',
          align: TextAlign.center,
          style: const TextStyle(
            fontSize: Dimens.dp16,
            color: Colors.white60,
          ),
        ),
        const SizedBox(height: Dimens.dp8),
        RegularText(
          'By. ${authors ?? '-'} • ${googleBook.volumeInfo?.publishedDate ?? ''}',
          style: const TextStyle(
            color: Colors.blueGrey,
          ),
        ),
        const SizedBox(height: Dimens.dp16),
        const Divider(thickness: Dimens.dp3),
        const SizedBox(height: Dimens.dp3),
        RegularText('Publisher: ${googleBook.volumeInfo?.publisher ?? '-'}'),
        const SizedBox(height: Dimens.dp3),
        RegularText('Type: ${googleBook.volumeInfo?.printType ?? '-'}'),
        const SizedBox(height: Dimens.dp3),
        const SizedBox(height: Dimens.dp3),
        RegularText(
          'Price: ${googleBook.saleInfo?.listPrice?.currencyCode ?? 'Free'} '
          '${googleBook.saleInfo?.listPrice?.amount ?? ''}',
        ),
        const SizedBox(height: Dimens.dp3),
        if (googleBook.volumeInfo?.previewLink != null)
          OutlinedButton(
              onPressed: () {
                _launchURL(googleBook.volumeInfo?.previewLink);
              },
              child: const Text('Preview the Book')),
        const Divider(thickness: Dimens.dp3),
        const SizedBox(height: Dimens.dp16),
        const SubTitleText('Description'),
        const SizedBox(height: Dimens.dp16),
        RegularText(
          googleBook.volumeInfo?.description ?? '-',
          align: TextAlign.justify,
          style: const TextStyle(
            color: Colors.white60,
          ),
        ),
      ],
    );
  }

  _launchURL(String? path) async {
    final Uri url = Uri.parse(path ?? '');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
