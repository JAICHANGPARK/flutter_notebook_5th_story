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
  bool _isAuth = false;

  Future<void> checkAvailable() async {
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

  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuth = true;
      });
      authenticated = await auth.authenticateWithBiometrics(
        localizedReason: "Scan your Fingerprint",
        useErrorDialogs: true,
        stickyAuth: true,
      );
      setState(() {
        _isAuth = false;
      });
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;
    print("auth : $authenticated");
  }

  Future<void> _getAvailableBiometrics() async{
    List<BiometricType> availableTypes;
    try{
      availableTypes = await auth.getAvailableBiometrics();
    }on PlatformException catch(e){
      print(e);
    }
    if(!mounted) return;
    setState(() {
      _availableBiometrics = availableTypes;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  void _cancelAuthentication(){
    auth.stopAuthentication();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("check biometric $_canCheckBiometrics"),
          RaisedButton(
            child: Text("Check biometrics"),
            onPressed: checkAvailable,
          ),
          Text("Available biometrics : $_availableBiometrics"),
          RaisedButton(
            child: Text("get biometrics type"),
            onPressed: _getAvailableBiometrics,
          ),
          Text("Auth State $_isAuth"),
          RaisedButton(
            child: Text(_isAuth ? "Cancel" : "Auth Completed"),
            onPressed: _isAuth ? _cancelAuthentication : _authenticate,
          )
        ],
      ),
    );
  }
}


















