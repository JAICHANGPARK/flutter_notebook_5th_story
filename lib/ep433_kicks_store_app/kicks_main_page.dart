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
  Future<bool> checkAvailable()async{
    bool canCheckBiometrics = await auth.canCheckBiometrics;
    try{

    }on PlatformException catch(e) {
      
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
