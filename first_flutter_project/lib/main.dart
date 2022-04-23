import 'package:flutter/material.dart';

import 'components/command_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final textStyle = const TextStyle(fontSize: 30, color: Colors.red);
  final legenda = '''
        O Muro das Lamentações ou Muro Ocidental é o segundo local mais sagrado do judaísmo, 
        atrás somente do Santo dos Santos, no monte do Templo. 
        Trata-se do único vestígio do antigo Templo de Herodes, erguido por Herodes, 
        o Grande no lugar do Templo de Jerusalém inicial.
      ''';

  _handleCallClick() {
    print('Call Click');
  }

  _handleLocationClick() {
    print('Location Click');
  }

  _handleShareClick() {
    print('Share Click');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('My First App'),
            ),
            elevation: 0,
          ),
          body: Column(
            children: [
              const Image(image: AssetImage('lib/assets/muro.jpg')),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Kotel',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Text(
                          'Jerusalem, Israel',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )),
                    const Icon(
                      Icons.star,
                      color: Colors.lightBlue,
                    ),
                    const Text('3.891')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CommandButton(
                      icon: Icons.call,
                      title: 'Ligar',
                      onPress: _handleCallClick,
                    ),
                    CommandButton(
                      icon: Icons.location_on,
                      title: 'Endereço',
                      onPress: _handleLocationClick,
                    ),
                    CommandButton(
                      icon: Icons.share,
                      title: 'Compartilhar',
                      onPress: _handleShareClick,
                    )
                  ],
                ),
              ),
              const Expanded(
                child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'O Muro das Lamentações ou Muro Ocidental é o segundo local mais sagrado do judaísmo, atrás somente do Santo dos Santos, no monte do Templo. Trata-se do único vestígio do antigo Templo de Herodes, erguido por Herodes, o Grande no lugar do Templo de Jerusalém inicial.',
                    )),
              )
            ],
          ),
        ));
  }
}
