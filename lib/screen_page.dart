import 'package:capital/buttons.dart';
import 'package:flutter/material.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({Key? key}) : super(key: key);

  @override
  _ScreenPageState createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          //backgroundColor: Color(0xFF3F5AA6),
          backgroundColor: Colors.black,
          //actions: [IconButton(onPressed: _reset, icon: Icon(Icons.refresh))],
          centerTitle: true,
          //title: Text("Canal Promessas"),
          title: Image.asset(
            'image/logo_canal_promessas.png',
            fit: BoxFit.contain,
            height: 70,
          ),
        ),
        //bottomNavigationBar: menu(),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                      child: Image.asset(
                        'image/logo_capital_promessas.png',
                        fit: BoxFit.contain,
                        height: 150,
                      ),
                  ),
                  Buttons()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
