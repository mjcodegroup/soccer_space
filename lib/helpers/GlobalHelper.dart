import 'package:flutter/material.dart';

class GlobalHelper {
  showMaterialDialogExt(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.grey,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            contentPadding: EdgeInsets.only(top: 10.0),
            content: Container(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      height: 40,
                      color: Colors.grey,
                      child: Center(
                        child: Text(
                          "Deseja sair?",
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        ),
                      )),
                  Divider(
                    color: Colors.grey,
                    height: 4.0,
                  ),
                  Container(
                    color: Colors.grey[900],
                    child: Padding(
                        padding: EdgeInsets.all(50.0),
                        child: Text(
                          "Você será desconectado do aplicativo",
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        )),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 1.0,
                  ),
                  InkWell(
                    child: Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Cancelar",
                                style: TextStyle(color: Colors.blue),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Sair",
                                style: TextStyle(color: Colors.blue),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
