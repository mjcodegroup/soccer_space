import 'package:flutter/material.dart';
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
      home: MyHomePage(title: 'All About Foot'),
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
            style: TextStyle(color: Colors.green),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
