import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:async';

class ConnectivityBanner extends StatelessWidget {
  final Widget child;

  const ConnectivityBanner({super.key, required this.child});

  Stream<ConnectivityResult> get _connectivityStream {
    return Connectivity().onConnectivityChanged.transform(
      StreamTransformer<List<ConnectivityResult>, ConnectivityResult>.fromHandlers(
        handleData: (data, sink) {
          sink.add(data.isNotEmpty ? data.first : ConnectivityResult.none);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ConnectivityResult>(
      stream: _connectivityStream,
      builder: (context, snapshot) {
        final isOffline = snapshot.data == ConnectivityResult.none;
        return Column(
          children: [
            if (isOffline)
              Container(
                color: Colors.red,
                padding: const EdgeInsets.all(8),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wifi_off, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'You are offline',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            Expanded(child: child),
          ],
        );
      },
    );
  }
}