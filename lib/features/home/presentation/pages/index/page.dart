/// Created by github.com/im-o on 10/14/2023.

import 'package:flutter/material.dart';

import 'sections/sections.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Books'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return const BookSection();
  }
}
