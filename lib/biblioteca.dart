import 'package:biblioteca_disenio/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Biblioteca extends StatelessWidget {
  late final CardItem portada;

  Biblioteca({Key? key, required this.portada}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(portada.title),
          backgroundColor: Color(0xFFE3DDD3),
        ),
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Image.network(
                portada.urlImage,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      portada.description,
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )),
          ],
        ),
      );
}
