import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Angel Alvarado'),
          centerTitle: true,
          backgroundColor: Color(0xff47faff),
        ),
        body: Padding(
          // Agrega Padding al body
          padding: const EdgeInsets.only(
              top: 20.0,
              right: 90), // Ajusta el valor del padding según tus necesidades
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildBorderedText(
                      'A',
                      Border(
                          top: BorderSide(color: Color(0xff47faff), width: 1),
                          left:
                              BorderSide(color: Color(0xff47faff), width: 1))),
                  SizedBox(width: 20),
                  _buildBorderedText(
                      'B',
                      Border(
                          left: BorderSide(color: Color(0xff47faff), width: 1),
                          right:
                              BorderSide(color: Color(0xff47faff), width: 1))),
                  SizedBox(width: 20),
                  _buildBorderedText(
                      'C',
                      Border(
                          top: BorderSide(color: Color(0xff47faff), width: 1),
                          bottom:
                              BorderSide(color: Color(0xff47faff), width: 1))),
                ],
              ),
              SizedBox(height: 30), // Espacio entre el contenido y el texto
              Text(
                'Angel Gabriel Alvarado Aguirre NumControl: 22308051281127',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBorderedText(String text, Border border) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: border,
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
