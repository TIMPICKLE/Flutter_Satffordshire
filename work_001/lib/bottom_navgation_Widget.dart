import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/2_screen.dart';
import 'pages/3_screen.dart';
import 'pages/4_screen.dart';
import 'pages/5_screen.dart';
import 'frosted_glass_demo.dart';//用于测试的毛玻璃文件
//stufl qucik to start statefulwidget
class BottomNavgationWidget extends StatefulWidget {

  _BottomNavgationWidgetState createState() => _BottomNavgationWidgetState();
}

class _BottomNavgationWidgetState extends State<BottomNavgationWidget> {
  final _BottomNavgationColor = Colors.blue;
    //在内部定义颜色属性  下划线 表示内部inner
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState(){
    //前面的 createState 是在创建 StatefulWidget 的时候会调用，（十分不理解 后期再看一下）
    //initState 是 StatefulWidget 创建完后调用的第一个方法，而且只执行一次，类似于 Android 的 onCreate、iOS 的 viewDidLoad()，
   // 所以在这里 View 并没有渲染，但是这时 StatefulWidget 已经被加载到渲染树里了，
    //这时 StatefulWidget 的 mount的值会变为 true，直到 dispose调用的时候才会变为 false。
    //可以在 initState里做一些初始化的操作。
//在 override initState的时候必须要调用 super.initState()：
    list
    ..add(Homescreen())
    ..add(twoscreen())
    ..add(threescreen())
    ..add(fivescreen())
    ..add(fourscreen()); //建造者模式（Builder Pattern） 那么就是用完Add这个方法，然后返回list
    super.initState();//初始父类方法
  }

  @override
  

  Widget build(BuildContext context) {
    //脚手架理解为定义好的组件 组件位置全部给你设置好 那么你只要放进去就可以了
    //同理 Container 理解为容器 在画布上 一个容器 
    
     return Scaffold(
       body: list[_currentIndex],
bottomNavigationBar: BottomNavigationBar(
  items: [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.apps,
        color: _BottomNavgationColor,
      ),
      title: Text(
        "Medicines",
        style: TextStyle(color: _BottomNavgationColor),
        )
    ),
     BottomNavigationBarItem(
      icon: Icon(
        Icons.airplay,
        color: _BottomNavgationColor,
      ),
      title: Text(
        "NEWS",
        style: TextStyle(color: _BottomNavgationColor),
        )
    ),
     BottomNavigationBarItem(
      icon: Icon(
        Icons.library_books,
        color: _BottomNavgationColor,
      ),
      title: Text(
        "Disease",
        style: TextStyle(color: _BottomNavgationColor),
        )
    ),
     BottomNavigationBarItem(
      icon: Icon(
        Icons.call,
        color: _BottomNavgationColor,
      ),
      title: Text(
        "search for GP",
        style: TextStyle(color: _BottomNavgationColor),
        )
    ),
     BottomNavigationBarItem(
      icon: Icon(
        Icons.perm_contact_calendar,
        color: _BottomNavgationColor,
      ),
      title: Text(
        "setting",
        style: TextStyle(color: _BottomNavgationColor),
        )
    )
  ],
  currentIndex: _currentIndex,
  onTap: (int index){
    setState(() {
      _currentIndex = index;
      //按索引去更改状态
    });
  }
),
     );
  }
}

//DOC文档说明
//Doc1 这部分开始测试导航栏
//Doc2 在cycle2中我测试了 毛玻璃特效。 之后的测试全部放入主入口 main function
//Doc3 这次我将把这部分放在启动文件里 来测试效果
//Doc4 在测试文件中我们使用了scafford脚手架 那么对于拓展的pages 就不要在使用脚手架 直接一个容器加进去