part of '../main.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('About'),
      ),
      body: Observer(builder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Contagem: ${counter.value}'),
              ElevatedButton(
                  onPressed: counter.increment,
                  child: const Text('Incrementar')),
            ],
          ),
        );
      }),
    );
  }
}
