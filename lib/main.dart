import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import './pages/home/page-home.dart' as PageHome;
import './pages/message/page-message.dart' as PageMessage;
import './pages/my/page-my-center.dart' as PageMyCenter;

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
          appBarTheme: AppBarTheme(
            titleTextStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),

      routes: {
        // "pageButton": (BuildContext context) => new PageButton(),
        // "pageLayout": (BuildContext context) => new PageLayout(),
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
  int _selectedIndex = 0;

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
      tooltip: '', // 取消长按提示
    ),
    new BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.message),
      label: '消息',
      tooltip: '',
    ),
    new BottomNavigationBarItem(
      backgroundColor: Colors.amber,
      icon: Icon(Icons.people),
      label: '我的',
      tooltip: '',
    ),
  ];

  // 所有的tab对应的页面
  final List<Widget> tabItems = [
    PageHome.PageHome(),
    PageMessage.PageMessage(),
    PageMyCenter.PageMyCenter(),
  ];

  final GlobalKey globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    /// 获取屏幕尺寸
    MediaQueryData mq = MediaQuery.of(context);
    var screenHeight = mq.size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(widget.title),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
        // 左侧图标
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // 处理菜单点击事件
            print('菜单按钮被点击');
            TDDrawer(context,
                visible: true,
                title: "测试标题",
                placement: TDDrawerPlacement.left,
                // drawerTop: screenHeight,
                items: List.generate(
                    50, (index) => TDDrawerItem(title: 'item$index')).toList(),
                onItemClick: (index, item) {
              print('drawer item被点击，index：$index，title：${item.title}');
            });
          },
        ),
        // 右侧图标
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // 处理搜索点击事件
              print('搜索按钮被点击');
            },
          ),
        ],
      ),
      body: tabItems[_selectedIndex],
      bottomNavigationBar: new BottomNavigationBar(
        items: bottomNavItems,
        // 设置文字大小
        selectedFontSize: 14,
        unselectedFontSize: 14,

        // 当前选中项
        currentIndex: _selectedIndex,
        // 背景颜色
        backgroundColor: Colors.white,
        // 选中项颜色
        selectedItemColor: Colors.blue,
        // 未选中项颜色
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(
          // 选中项图标颜色
          color: Colors.blue,
          // 选中项图标大小
          // size: 32,
          // 选中项图标透明度
          opacity: 1,
        ),
        // 未选中图标主题
        unselectedIconTheme: IconThemeData(
          color: Colors.blue,
          // size: 24,
          opacity: 0.5,
        ),

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
