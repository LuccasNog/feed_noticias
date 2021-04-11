import 'package:app_flutter/feed/ifeed.dart';
import 'package:flutter/material.dart';

import 'feed/feed.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  // Criando a variavel feed de noticiais
  List<Ifeed> feed = [];

  // No initState vou adicionar os caras
  @override
  void initState() {
    super.initState();
    // Adicionando um feed
    feed.add(Feed(text: 'Enviando Mensagem de Text'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemBuilder: (context, index) => feed[index].render(),
          itemCount: feed.length,
        ));
  }
}
