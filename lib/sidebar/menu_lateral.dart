import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      child: Column(
        children: <Widget>[
          createDrawerHeader(),
          Container(
            height: MediaQuery.of(context).size.height / 1.7,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                createDrawerBodyItem(icon: Icons.sports_soccer, text: 'MATCHS'),
                createDrawerBodyItem(
                    icon: Icons.sports_soccer, text: 'COMPÉTITIONS'),
                createDrawerBodyItem(
                    icon: Icons.sports_soccer, text: 'ÉQUIPES'),
                createDrawerBodyItem(
                    icon: Icons.sports_soccer, text: 'TRANSFERTS'),
                createDrawerBodyItem(
                    icon: Icons.sports_soccer, text: 'ARTICLES'),
              ],
            ),
          ),
          Footer()
        ],
      ),
    ));
  }
}

///Retorna o header do drawer
Widget createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/terrainNight.jpg'))),
      child: Stack(children: <Widget>[
        Positioned(
            child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Container(
              //     decoration: BoxDecoration(
              //         color: Color.fromRGBO(255, 255, 255, 0.2),
              //         borderRadius: BorderRadius.all(Radius.circular(5))),
              //     width: 100,
              //     height: 100,
              //     child: Image(
              //       image: AssetImage('assets/ballon.jpg'),
              //       fit: BoxFit.cover,
              //     )),
              Container(
                  width: 150,
                  height: 50,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "S.S",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        Text(
                          "Soccer Space",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        )),
      ]));
}

///Retorna um widget para cada item
Widget createDrawerBodyItem(
    {IconData? icon, String? text, GestureTapCallback? onTap}) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(width: 0.5, color: Colors.white),
      color: Colors.green[100],
    ),
    child: ListTile(
      title: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Icon(icon, color: Colors.green),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      text!,
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child:
                  Icon(Icons.arrow_forward_ios_outlined, color: Colors.green),
            )
          ],
        ),
      ),
      onTap: onTap,
    ),
  );
}

///Retorna o widget footer
Widget Footer() {
  return Expanded(
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        alignment: Alignment.bottomLeft,
        child: SizedBox(
          height: 100,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: //container para o background
                        AssetImage('assets/ballon.jpg'),
                    fit: BoxFit.cover)),
            child: Stack(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/ballon.jpg'),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    ),
  );
}
