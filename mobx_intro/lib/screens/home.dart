part of '../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double consumption = 0;

  void _handleConsumptionField(String value) {
    setState(() {
      if (value.isEmpty) {
        consumption = 0;
      } else {
        consumption = double.parse(value);
      }
    });
  }

  void _handleRegister() {
    if (consumption > 0) {
      consumptionList.addConsumption(consumption);
      setState(() {
        consumption = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Observer(builder: (context) {
        return Center(
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Whats yout travel consumption?',
                ),
                keyboardType: TextInputType.number,
                onChanged: _handleConsumptionField,
              ),
              ElevatedButton(
                  onPressed: _handleRegister,
                  child: Text('Register $consumption')),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      const Text('Total registered'),
                      Text('${consumptionList.list.length}'),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      const Text('All average'),
                      Text(consumptionList.average),
                    ],
                  ))
                ],
              ),
              const Text('Registers:'),
              Expanded(
                child: ListView.builder(
                  itemCount: consumptionList.list.length,
                  itemBuilder: (context, index) {
                    final double value = consumptionList.list[index];
                    return Dismissible(
                      key: Key(value.toString()),
                      onDismissed: (direction) {
                        consumptionList.removeConsumption(value);
                      },
                      child: ListTile(
                        title: Text(value.toString()),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
