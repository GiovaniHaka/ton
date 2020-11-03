import 'package:flutter/material.dart';

import '../textstyles.dart';

class Balance extends StatelessWidget {
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
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Saldo disponível",
                  style: ThemeText.style1.copyWith(),
                ),
                Text(
                  "R\$2.800,00",
                  style: ThemeText.style1.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Divider(
                  height: 7,
                  color: Colors.transparent,
                ),
                Text(
                  "Saldo a receber",
                  style: ThemeText.style1.copyWith(
                    color: Colors.grey[600],
                    fontSize: 15,
                  ),
                ),
                Text(
                  "R\$5.000,00",
                  style: ThemeText.style1.copyWith(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(
                  "ocultar saldo",
                  style: ThemeText.style1.copyWith(
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Ver extrato",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blueAccent[400],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
