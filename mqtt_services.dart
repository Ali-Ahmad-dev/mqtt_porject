import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

class mqtt_services {
  final client = MqttServerClient('test.mosquitto.org', '');
  var pongCount = 0;
  Future mqtts_Service() async {
    client.logging(on: false);
    client.setProtocolV311();
    client.keepAlivePeriod = 20;
    client.onConnected = onConnected;
    client.onConnected = onDisconnected;
    client.onSubscribed = onSubscribed();
    client.pongCallback = pong;

    final conmess = MqttConnectMessage()
        .withWillTopic('willTopic')
        .withWillMessage('My will message')
        .startClean()
        .withWillQos(MqttQos.atLeastOnce);
    print('Client is connecting');
    client.connectionMessage = conmess;

    try {
      await client.connect();
    } on NoConnectionException catch (e) {
      print('client Exception - $e');
      client.disconnect();
    } on SocketException catch (e) {
      print('socket Exception - $e');
      client.disconnect();
    }

    if (client.connectionStatus!.state == MqttConnectionState.connected) {
      print('Mosquitto client connected');
    } else {
      print(
          'ERROR Mosquitto client connection failed - disconnecting, status is ${client.connectionStatus}');
      client.disconnect();
      exit(-1);
    }
  }

  onConnected() {}
  onDisconnected() {}
  onSubscribed() {}
  pong() {}
}
