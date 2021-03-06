import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:anwerapp/Application/CommerceApp/ListHorizontalShopingApp.dart';
import 'package:anwerapp/Application/CommerceApp/AnwerDrawer.dart';
class HomeCommerceApp extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<HomeCommerceApp> {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(
        backgroundColor: Colors.white,


        //---------------- App Bar ---------------------------------------
        appBar: new AppBar(
          centerTitle: false,
          backgroundColor: Colors.pinkAccent,
          elevation: 0.0,
          title: new Text("Shop App"),
          actions: <Widget>[
            new IconButton(icon:Icon(Icons.search), onPressed: (){}),
            new IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){})
          ],
        ),

        //---------------- Drawer ---------------------------------------
//        drawer: _buildDrawer(),
        drawer: AnwerDrawer(),


        //---------------- Body ---------------------------------------
        body: ListView(
          children: <Widget>[

            _buildCarouselSlide(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0 ,top: 10.0),
              child: new Text("Categories " ,style: TextStyle(fontSize: 20.0),),
            ),

            ListHorizontalShopingApp(),



          ],
        ),



      ),
    );
  }

  Container _buildCarouselSlide() {
    return new Container(
            height: 200.0,
              child: new Carousel(
                boxFit: BoxFit.cover,
                dotBgColor: Colors.black.withOpacity(0.0),
//                dotColor: Colors.yellow,
                images: [
                  new NetworkImage('https://cdn.pixabay.com/photo/2016/10/16/23/32/fashion-show-1746582__480.jpg'),
                  new NetworkImage('https://cdn.pixabay.com/photo/2018/01/11/09/52/three-3075752__480.jpg'),
                  new NetworkImage("https://cdn.pixabay.com/photo/2017/09/19/21/37/fashion-2766734__480.jpg"),
                  new NetworkImage("https://cdn.pixabay.com/photo/2016/10/16/23/33/fashion-show-1746590__480.jpg"),
                  new NetworkImage("https://cdn.pixabay.com/photo/2017/08/17/08/20/online-shopping-2650383__480.jpg"),
                ],
              )
          );
  }

}