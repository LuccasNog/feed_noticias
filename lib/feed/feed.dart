// Classe que vai implementar nossa interface
//
//
import 'package:app_flutter/feed/ifeed.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
//import 'package:flutter/cupertino.dart';

class Feed implements Ifeed {
  //TEXT DO FEED
  final String text;
// Data da Postagem
  final DateTime date;
  Feed({@required this.text}) : date = DateTime.now();

  @override
  Widget render() {
    // vamos usar um card
    //
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: renderContent(),
    );
  }

  @override
  Widget renderContent() {
    // Iniciamente somente um texto e abaixo vai ter uma data
    return Column(
      children: <Widget>[
        //POegando o text do atribudo
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text),
        ),
        // Renderbootom eu chamo ele pra ter isso bonitin separado
        renderBottom()
      ],
    );
  }

  @override
  Widget renderBottom() {
    //Column e dentro dela vai ter o espaço e a mensagem enviado em na data
    return Column(
      children: <Widget>[
        SizedBox(
          height: 5,
        ),
        Text('Enviando em ${DateFormat('dd/MM/yyyy').format(date)}')
      ],
    );
  }
}
