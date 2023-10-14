/// Created by github.com/im-o on 10/14/2023.

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../../../core/core.dart';
import '../../../../home.dart';

class BookSection extends StatefulWidget {
  const BookSection({super.key});

  @override
  State<BookSection> createState() => _BookSectionState();
}

class _BookSectionState extends State<BookSection> {
  List<GoogleBook> _googleBooks = [];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return _googleBooks.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.all(Dimens.dp4),
              child: SingleChildScrollView(
                child: StaggeredGrid.count(
                  crossAxisCount: constraints.maxWidth > 900 ? 5 : 3,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  children: _googleBooks.map((googleBook) {
                    return BookItemCard(
                      googleBook: googleBook,
                      onTapBook: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => BookDetailPage(movie: movie),
                        // ));
                      },
                    );
                  }).toList(),
                ),
              ),
            )
          : const Center(child: Text("Data is empty!"));
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  Future<void> readJson() async {
    final String response = await rootBundle.loadString(
      'assets/json/googlebook.json',
    );
    var data = await json.decode(response);
    var googleBooks = GoogleBookResponse.fromJson(data).items;
    setState(() => _googleBooks = googleBooks ?? []);
  }
}
