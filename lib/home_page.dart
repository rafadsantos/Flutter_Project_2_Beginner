/* *********************************************************************************************
  -- Novos widgets utilizados neste projeto:
    Stack
    Border
  -- Dica de site para buscar imagens aleatórias:
      https://picsum.photos/
    Just add your desired image size (width & height) after our URL, and you'll get a random image:
      https://picsum.photos/200/300
    To get a square image, just add the size:
      https://picsum.photos/200

********************************************************************************************** */

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biz Card'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar(),
          ],
        ),
      ),
    );
  }

  // método
  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Paulo Dichone',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'buildappswithpaulo.com',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person_outline),
              Text(
                'T: @buildappswithme',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50)),
        border: Border.all(
          color: Colors.black,
          width: 1.2,
        ),
        image: DecorationImage(
          image: NetworkImage('https://picsum.photos/300/300'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
