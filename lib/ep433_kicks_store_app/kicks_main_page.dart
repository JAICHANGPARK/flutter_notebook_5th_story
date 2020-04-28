import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class KicksMainPage extends StatefulWidget {
  @override
  _KicksMainPageState createState() => _KicksMainPageState();
}

class _KicksMainPageState extends State<KicksMainPage> {
  final LocalAuthentication auth = LocalAuthentication();
  bool _canCheckBiometrics;
  List<BiometricType> _availableBiometrics;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;

  Future<void> _checkBiometrics() async {
    bool canCheckBiometrics;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;

    setState(() {
      _canCheckBiometrics = canCheckBiometrics;
    });
  }

  Future<void> _getAvailableBiometrics() async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;

    setState(() {
      _availableBiometrics = availableBiometrics;
    });
  }

  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticateWithBiometrics(
          localizedReason: 'Scan your fingerprint to authenticate', useErrorDialogs: true, stickyAuth: true);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Authenticating';
      });
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;

    final String message = authenticated ? 'Authorized' : 'Not Authorized';
    setState(() {
      _authorized = message;
    });
  }

  void _cancelAuthentication() {
    auth.stopAuthentication();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {},
              ),
              title: Text(
                "Cart",
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
            ),
            body: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.blue[50]),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                bottom: 0,
                                child: Text(
                                  "98",
                                  style: TextStyle(fontSize: 140, fontWeight: FontWeight.bold, color: Colors.blue[100]),
                                ),
                              ),
                              Positioned(
                                right: 24,
                                top: 36,
                                bottom: 24,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "AIR MAX 98",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Text(
                                      "\"Blue neon\"",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "US 7",
                                          style: TextStyle(),
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          "\$149",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 0,
                        thickness: 1.2,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.orange[50]),
                          child: Stack(
                            children: [
                              Positioned(
                                left: -24,
                                top: 0,
                                bottom: 0,
                                child: Text(
                                  "270",
                                  style:
                                      TextStyle(fontSize: 140, fontWeight: FontWeight.bold, color: Colors.orange[100]),
                                ),
                              ),
                              Positioned(
                                right: 24,
                                top: 36,
                                bottom: 24,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "AIR MAX 270",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Text(
                                      "\"Gold\"",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "US 7",
                                          style: TextStyle(),
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          "\$199",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 0,
                        thickness: 1.2,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.white),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 8,
                                top: 16,
                                bottom: 24,
                                child: Column(
                                  children: [
                                    Text("Shipping address",style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Icon(Icons.card_giftcard),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Wajskowa 6",
                                              style: TextStyle(color: Colors.grey, fontSize: 12),
                                            ),
                                            Text(
                                              "60-792 Poznan",
                                              style: TextStyle(color: Colors.grey, fontSize: 12),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Spacer()
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 16,
                                top: 44,
                                bottom: 44,
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(24)),
                                  child: Center(
                                    child: Text(
                                      "CHANGE",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 0,
                        thickness: 1.2,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.white, gradient: LinearGradient(colors: [])),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Total"),
                          SizedBox(
                            width: 12,
                          ),
                          Text("\$348"),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 46,
                        child: Center(
                          child: Text(
                            "PAY NOW",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width - 36,
                        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(24)),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
