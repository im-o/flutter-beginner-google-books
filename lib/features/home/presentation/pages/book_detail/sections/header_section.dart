/// Created by github.com/im-o on 10/15/2023.

import 'package:flutter/material.dart';

import '../../../../../../core/core.dart';
import '../../../../home.dart';

class HeaderSection extends StatelessWidget {
  final GoogleBook googleBook;

  const HeaderSection({super.key, required this.googleBook});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: constraints.maxWidth > 900 ? Dimens.dp500 : Dimens.dp200,
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: constraints.maxWidth > 900
                ? BorderRadius.circular(Dimens.dp16)
                : BorderRadius.circular(Dimens.dp8),
          ),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: BookImage(googleBook: googleBook),
        ),
      );
    });
  }
}
