import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
class KicksMainPage extends StatefulWidget {
  @override
  _KicksMainPageState createState() => _KicksMainPageState();
}

class _KicksMainPageState extends State<KicksMainPage> {
  Future<bool> checkAvailable()async{
    bool canCheckBiometrics = await localAuth.canCheckBiometrics;

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
