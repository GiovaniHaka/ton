import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ton/components/balance.dart';
import 'package:ton/components/carrousel.dart';
import 'package:ton/components/courses.dart';
import 'package:ton/components/sales_social_media.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(color: Color(0xff00bf00)),
            ),
            Flexible(
              flex: 7,
              child: Container(
                color: Colors.white,
              ),
            )
          ],
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            toolbarHeight: 80,
            title: Text("Nabil Saad"),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.help_outline,
                  size: 30,
                ),
              )
            ],
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 30,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: ListView(
            children: [
              Balance(),
              Carrousel(),
              SalesSocialMidia(),
              Courses(),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xff00bf00),
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/images/ton.svg',
                fit: BoxFit.fitWidth,
                color: Colors.white,
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 50,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Chat",
                  style: TextStyle(height: 2.5),
                ),
              ),
            ),
            // notchedShape: CircularNotchedRectangle(),
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
