

import 'package:flutter/material.dart';

class PageHome  extends StatefulWidget {

  const PageHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PageHomeState();
  }
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Page Home'));
  }
}