import 'package:capital/screen_video.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  void _fazerLigacao() async {
    const url = "tel:06239450301";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível acessar $url';
    }
  }

  void _abrirGmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'produtoragentelegal@gmail.com',
      query: 'subject=Informação&body=Detalhe aqui sua mensagem: ',
    );
    String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Não foi possível acessar $url');
    }
  }

  void _abrirWhatsApp() async {
    var whatsappUrl =
        "whatsapp://send?phone=+5562999275777&text=Olá! Agradecemos o seu contato.";

    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Não foi possível acessar $whatsappUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.lightBlue,
      height: 470,
      decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50))),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenVideo()));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 232, 241, 254),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(3.0, 5.0),
                          blurRadius: 7),
                    ]),
                width: 350,
                height: 90,
                //alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.play,
                        color: Colors.black, size: 50),
                    Text(
                      'Assista ao vivo!',
                      style:
                          TextStyle(fontSize: 23, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: _fazerLigacao,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 232, 241, 254),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(3.0, 5.0),
                                blurRadius: 7),
                          ]),
                      width: 105,
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.phone,
                            color: Colors.green,
                            size: 30,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "TELEFONE",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: _abrirGmail,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 232, 241, 254),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(3.0, 5.0),
                                blurRadius: 7),
                          ]),
                      width: 105,
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.solidEnvelope,
                            color: Colors.blue,
                            size: 30,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "EMAIL",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: _abrirWhatsApp,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 232, 241, 254),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(3.0, 5.0),
                                blurRadius: 7),
                          ]),
                      width: 105,
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.whatsapp,
                            color: Colors.green,
                            size: 30,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "WHATSAPP",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
