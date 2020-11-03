import 'package:flutter/material.dart';

import '../textstyles.dart';

class SalesSocialMidia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent[400],
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
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                    child: Image.asset(
                  'assets/images/social1.png',
                  height: 100,
                )),
                Text(
                  "Venda agora\npelas suas redes\nsociais!",
                  style: ThemeText.style1.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white,
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
