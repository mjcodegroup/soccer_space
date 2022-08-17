import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class NetworkService {
  ///Voltando
  static NetworkService _instance = new NetworkService.internal();
  NetworkService.internal();

  factory NetworkService() => _instance;

  Map<String, String> get _headers => {
        HttpHeaders.contentTypeHeader: "application/json; charset=UTF-8",
        HttpHeaders.acceptHeader: "application/json",
      };

  Future<http.Response> get(String url) async {
    if (await isConnected()) {
      return http
          .get(Uri.parse(url), headers: _headers)
          .then((http.Response response) {
        return response;
      });
    }
    return http.Response('Ocorreu um erro!', 500);
  }

  Future<http.Response> post(String url, body) async {
    if (await isConnected()) {
      try {
        var head = _headers;
        return await http
            .post(Uri.parse(url), headers: head, body: body)
            .timeout(Duration(seconds: 30))
            .then((http.Response response) => response);
      } on PlatformException {
        return http.Response(jsonEncode('Erro desconhecido! (ED)'), 500);
      } on SocketException {
        return http.Response(
            jsonEncode('Sem conexão com o servidor! (SE)'), 500);
      } on FormatException {
        return http.Response(
            jsonEncode(
                'Ops! Tivemos um problema para concluir a  operação! (FE)'),
            500);
      } on TimeoutException {
        return http.Response(
            jsonEncode('A conexão com a internet está ruim! (TE)'), 500);
      } on ArgumentError {
        return http.Response(
            jsonEncode(
                'Ops! Tivemos um problema para concluir a  operação! (AE)'),
            500);
      } catch (e) {
        return http.Response(jsonEncode(e.toString()), 500);
      }
    }
    return http.Response(jsonEncode('Sem conexão com a internet! (NET)'), 500);
  }

  Future<bool> isConnected() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return Future.value(connectivityResult != ConnectivityResult.none);
  }
}
