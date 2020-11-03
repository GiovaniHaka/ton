import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Carrousel extends StatefulWidget {
  @override
  _CarrouselState createState() => _CarrouselState();
}

class _CarrouselState extends State<Carrousel>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 5,
              spreadRadius: 1,
              color: Colors.grey[400]),
        ],
      ),
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          TabBar(
            controller: _controller,
            indicatorColor: Color(0xff00bf00),
            labelColor: Color(0xff00bf00),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                text: 'Para vender',
              ),
              Tab(
                text: 'Para usar',
              ),
              Tab(
                text: 'Para crescer',
              ),
            ],
          ),
          Container(
            height: 130.0,
            child: TabBarView(
              controller: _controller,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CarrousselCard(
                      svgImage: "assets/images/calculator.svg",
                      text: "Vender agora",
                    ),
                    CarrousselCard(
                      svgImage: "assets/images/guidebook.svg",
                      text: "Minhas vendas",
                    ),
                    CarrousselCard(
                      svgImage: "assets/images/shop.svg",
                      text: "Minhas lojas",
                    ),
                  ],
                ),
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.location_on),
                    title: Text('Latitude: 48.09342\nLongitude: 11.23403'),
                    trailing: IconButton(
                        icon: const Icon(Icons.my_location), onPressed: () {}),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.location_on),
                    title: Text('Latitude: 48.09342\nLongitude: 11.23403'),
                    trailing: IconButton(
                        icon: const Icon(Icons.my_location), onPressed: () {}),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CarrousselCard extends StatelessWidget {
  final String svgImage;
  final String text;

  const CarrousselCard({Key key, this.svgImage, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          child: SvgPicture.asset(
            this.svgImage,
            height: 50,
            color: Color(0xff00bf00),
          ),
        ),
        Text(this.text),
      ],
    );
  }
}
