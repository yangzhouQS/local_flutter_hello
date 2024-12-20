import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PageHomeState();
  }
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            padding: EdgeInsets.all(0),
            color: Colors.blue,
            child: Image(
                image: AssetImage('assets/images/banner.jpg'),
                fit: BoxFit.fitWidth,
                width: double.infinity,
                repeat: ImageRepeat.noRepeat,
            )
          )
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 2,
          child: Container(
            color: Colors.red,
            height: 100,

          )
        ),
      ],
    );
  }
}
