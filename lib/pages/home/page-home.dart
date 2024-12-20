import 'package:flutter/material.dart';
// import '../../IconFontIcons.dart';
import './widget/page-receive.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PageHomeState();
  }
}

class _PageHomeState extends State<PageHome> {
  List appList = [];

  initState() {
    super.initState();
    appList = [
      {
        "name": "入库",
        "icon": "mq2 mq2-app-rukuguanli",
        /*"url": (BuildContext context) => {
          return new PageReceive();
        },*/
        "permissionCode": "mq2-rds-app-receive"
      },
      {
        "name": "出库",
        "icon": "mq2 mq2-app-chukuguanli",
        "url": "/deliveryList",
        "permissionCode": "mq2-rds-app-delivery"
      },
      {
        "name": "直收直发",
        "icon": "mq2 mq2-app-zhijinzhichu",
        "url": "/receiveToDeliveryList",
        "permissionCode": "mq2-rds-app-receive-to-delivery"
      },
      {
        "name": "工队调拨",
        "icon": "mq2 mq2-app-tiaobo",
        "url": "/labourAllotList",
        "permissionCode": "mq2-rds-app-labour-allot"
      },
      {
        "name": "采购计划",
        "icon": "mq2 mq2-app-caigoujihua",
        "url": "/purchasePlanList",
        "permissionCode": "mq2-rds-app-purchase-plan"
      },
      {
        "name": "项目订单",
        "icon": "mq2 mq2-app-zhijinzhichu",
        "url": "/projectOrderList",
        "permissionCode": "mq2-rds-app-project-order"
      },
      {
        "name": "库存",
        "icon": "mq2 mq2-app-kucun",
        "url": "/inventoryList",
        "permissionCode": "mq2-rds-app-inventory"
      },
      {
        "name": "供应计划",
        "icon": "mq2 mq2-app-caigoujihua",
        "url": "/supplyPlanList",
        "custom": true,
        "permissionCode": "mq2-rds-app-supply-plan"
      },
      {
        "name": "AI数钢筋",
        "icon": "mq2 mq2-app-aishugangjin",
        "url": "/steelBarsList",
        "permissionCode": "mq2-rds-app-count-steel-bars"
      },
      {
        "name": "盘点",
        "icon": "mq2 mq2-app-pandian",
        "url": "/checkStoreList",
        "permissionCode": "mq2-rds-app-check-store"
      },
      {
        "name": "盘点",
        "icon": "mq2 mq2-app-pandian",
        "url": "/checkStoreListCr133",
        "custom": true,
        "permissionCode": "mq2-rds-app-check-store"
      },
      {
        "name": "打印设置",
        "icon": "mq2 mq2-app-shezhi",
        "url": "/userSetting",
        "permissionCode": "mq2-rds-app-user-setting"
      }
    ];
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _childremView() {
      // return appList.map((item))
      return appList.map((item) => InkWell(
        onTap: () {
          print("点击 $item");
          Navigator.push(context,MaterialPageRoute(builder: (context)=>PageReceive()));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 70.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Icon(Icons.home, size: 30, color: Colors.grey),
                  // Icon(IconFontIcons.mq2App31guanbi, size: 30, color: Colors.yellow),
                  Icon(
                    Icons.verified_user,
                    size: 24.0, // 设置图标的大小
                    color: Colors.greenAccent, // 设置图标的颜色
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(item["name"]),
              ],
            )
          ],
        ),
      )).toList();
    }

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
                ))),
        Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Container(
              // color: Colors.red,
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(10),
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 4,
                children: _childremView(),
                // Generate 100 widgets that display their index in the List.
                /*children: List.generate(16, (index) {
                  return Center(
                    child: Text(
                      'Item $index',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  );
                }),*/
              ),
            )),
      ],
    );
  }
}
