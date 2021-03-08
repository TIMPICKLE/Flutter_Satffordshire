import 'package:flutter/material.dart';
import 'package:work_001/SignIn/signup.dart';
import 'signIn.dart';
import 'package:work_001/swiper/swiper.dart';
import 'package:flutter_swiper/flutter_swiper.dart';  


class PageForLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'TMCT',
      theme: new ThemeData(
        primarySwatch: Colors.green,
        primaryColor: const Color(0xFF4caf50),
        accentColor: const Color(0xFFbec2bb),
        canvasColor: const Color(0xFF88ae74),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    
     List<Widget> imageList = List();
      @override
  void initState() {
    imageList
    ..add(Image.network(
      'https://img.zhzyw.com/20190131143521_2656.png',
      fit: BoxFit.fill,
    ))
    ..add(Image.network(
      'http://wcweekly.com/wp-content/uploads/2017/06/201403270921238698-1068x601.jpg',
      fit: BoxFit.fill,
    ))
    ..add(Image.network(
      'https://pic2.zhimg.com/v2-4b1db2ebcd808ec90f91d71e7cc255f7_1200x500.jpg',
      fit: BoxFit.fill,
    ))
    ..add(Image.network(
      'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=190488632,3936347730&fm=26&gp=0.jpg',
      fit: BoxFit.fill,
    ));
    super.initState();
  }
    
    
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('TMCT'),
          ),
        body:
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
                 firstSwiperView(),

            

              new RaisedButton(key:null, onPressed:buttonPressed_SignIn,
                color: const Color(0xFFe0e0e0),
                child:
                  new Text(
                  "Sign In",
                    style: new TextStyle(fontSize:12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
                  )
                ),
    
              new RaisedButton(key:null, onPressed:buttonPressed_SignUp,
                color: const Color(0xFFe0e0e0),
                child:
                  new Text(
                  "Registered",
                    style: new TextStyle(fontSize:12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
                  ),
                ),
    
            
            ]
    
          ),
    
      );
    }

    
    void buttonPressed_SignIn(){
          Navigator.of(context).push(new MaterialPageRoute(builder: (ctx) {
            return new LoginPage();
             
          }));
    }
      void buttonPressed_SignUp(){
    Navigator.of(context).push(new MaterialPageRoute(builder: (ctx) {
            return new SignUp();
            
          }));

      }

Widget firstSwiperView() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 5),
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: Swiper(
        itemCount: 4,
        itemBuilder: _swiperBuilder,
        pagination: SwiperPagination(
            alignment: Alignment.bottomRight,
            margin: const EdgeInsets.fromLTRB(0, 0, 20, 10),
            builder: DotSwiperPaginationBuilder(
                color: Colors.black54,
                activeColor: Colors.white
            )
        ),
        controller: SwiperController(),
        scrollDirection: Axis.horizontal,
        autoplay: true,
        onTap: (index) => print('点击了第$index'),
      ),
    );
  }
  
  Widget _swiperBuilder(BuildContext context, int index) {
    return (imageList[index]);
  }

}