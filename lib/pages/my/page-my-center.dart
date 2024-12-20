

import 'package:flutter/cupertino.dart';

class PageMyCenter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageMyCenterState();
  }

}

class _PageMyCenterState extends State<PageMyCenter> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("我的中心"),
    );
  }

}