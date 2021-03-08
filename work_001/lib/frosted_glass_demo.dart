import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/material.dart' as prefix0;

class FrostedClassDemo extends StatelessWidget {
  final Aurl = "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1579964041778&di=ef28c63ecdf1308f9a1fa3f2044eadd5&imgtype=0&src=http%3A%2F%2Fpic.soutu123.com%2Fback_pic%2F04%2F12%2F70%2F32581c6737a0386.jpg%21%2Ffw%2F700%2Fquality%2F90%2Funsharp%2Ftrue%2Fcompress%2Ftrue";
  
  @override

   
  Widget build(BuildContext context) {
    return Scaffold(//重叠组件
      body: Stack(
         

 

        children: <Widget>[
          ConstrainedBox(//约束盒子组件 添加额外的约束条件
          constraints: const BoxConstraints.expand(),//随着里面的内容进行扩展
          child: prefix0.Image.network(Aurl),
          //这是我使用了 直接调用 interent图片 后期可以考虑直接内置图片
          ),
          Center(
            child:ClipRect(//可裁切的举行
            child: BackdropFilter(//背景过滤器
              filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),//模糊的程度
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  width: 500.0,
                  height: 900.0,
                  decoration: BoxDecoration(color: Colors.grey.shade200),//盒子修饰器
                  child: Center(
                    child: Text("China Traditional Medicine Teacher", style: Theme.of(context).textTheme.display2,),
                    
                  ),
                ),
                ),//透明度
              ),
            ) ,
          ),

          
        ],
      ),
    );
  }
}
//DOC文档说明
//DC1
//此部分实现毛玻璃的效果 在flutter里每一个class都可以看做一个组件
//那么每当写完一个widget之后 去启动项目（主入口）内去启动并测试 

//DOC2 暂时并没有使用到毛玻璃特效