/// Created by github.com/im-o on 10/14/2023.

import 'package:google_book/features/home/data/models/google_book.dart';

class GoogleBookResponse {
  String? kind;
  int? totalItems;
  List<GoogleBook>? items;

  GoogleBookResponse({this.kind, this.totalItems, this.items});

  GoogleBookResponse.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    totalItems = json['totalItems'];
    if (json['items'] != null) {
      items = <GoogleBook>[];
      json['items'].forEach((v) {
        items!.add(GoogleBook.fromJson(v));
      });
    }
  }
}
