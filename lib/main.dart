import 'package:flutter/material.dart';
import 'package:footinfo_app/containers/players.dart';
import 'package:footinfo_app/containers/popular_clubs.dart';
import 'package:footinfo_app/core/model/card_item.dart';
import 'package:footinfo_app/sidebar/menu_lateral.dart';

void main() {
  runApp(MyApp());
}

///Widget principal do nosso projeto
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Soccer Space'),
    );
  }
}

///A primeira pagina do projeto, tem um botão para entrar e ver os modelos disponiveis
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<CardImageItem> popularCards = [
    CardImageItem("Soccer field", 'assets/terrain1.jpg'),
    CardImageItem("Soccer field", 'assets/terrainNight.jpg'),
    CardImageItem("Soccer field", 'assets/terrainDay.jpg'),
    CardImageItem("Soccer field", 'assets/terrain2.jpg'),
  ];

  final List<CardImageItem> popularClubsCards = [
    CardImageItem("Football team", 'assets/realMadridFlag.jpg'),
    CardImageItem("Football team", 'assets/manchesterFlag.jpg'),
    CardImageItem("Football team", 'assets/barceloneFlag.jpg'),
    CardImageItem("Football team", 'assets/juventusFlag.jpg'),
    CardImageItem("Football team", 'assets/psgFlag.jpg'),
  ];

  final List<CardImageItem> playersCards = [
    CardImageItem("Player", 'assets/joueurSurTerrain1.jpg'),
    CardImageItem("Player", 'assets/girlPlayerWithBall.jpg'),
    CardImageItem("Player", 'assets/joueurSurTerrain3.jpg'),
    CardImageItem("Player", 'assets/joueurSurTerrain4.jpg'),
    CardImageItem("Player", 'assets/joueurSurTerrain5.jpg'),
    CardImageItem("Player", 'assets/joueurSurTerrain6.jpg'),
    CardImageItem("Player", 'assets/joueurSurTerrain7.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuLateral(),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.green),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            widget.title ?? "",
            style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            PopularClubs(popularClubsCards),
            PopularClubs(popularCards),
            Players(playersCards),
          ],
        ),
      ),
    );
  }
}
