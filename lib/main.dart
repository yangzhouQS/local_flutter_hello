import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import './page-button.dart';
import './page-layout.dart';

/**
 * 应用入口
 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 应用名称
      title: '基础设施测试应用',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        useMaterial3: true,
      ),

      routes: {
        "pageButton": (BuildContext context) => new PageButton(),
        "pageLayout": (BuildContext context) => new PageLayout(),
      },

      // 应用首页路由
      home: const MyHomePage(title: '移动收发'),
    );
  }
}

/**
 * 页面必须继承自 StatefulWidget类
 */
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/**
 * 状态类必须继承自 State 类
 */
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 1;

  void _incrementCounter() {
    setState(() {
      _counter += 10;
    });
  }

  final List<BottomNavigationBarItem> bottomNavItems = [
    new BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(Icons.home),
      label: '首页',
    ),
    new BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.message),
      label: '消息',
    ),
    new BottomNavigationBarItem(
      backgroundColor: Colors.amber,
      icon: Icon(Icons.verified_user),
      label: '我的',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onAdd() {}
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("新路由页面"),
      ),
      body: Center(
        child: Text("新路由页面"),
      ),
    );
  }
}
