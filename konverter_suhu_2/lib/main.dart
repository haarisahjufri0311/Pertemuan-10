import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Konversi Suhu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  double _inputuser = 0;
  String newValue = "Kelvin";
  double _result = 0;
  String changeValue = "";
  double _currentSliderValue = 20;
  TextEditingController sliderController = TextEditingController();

  List<String> listViewItem = <String>[];

  var listItem = [
    "Kelvin",
    "Reamur",
  ];
  void perhitunganSuhu() {
    setState(() {
      _currentSliderValue = double.parse(sliderController.text);

      if (newValue == "Kelvin") {
        _result = _currentSliderValue + 273;
        listViewItem.add("Kelvin : " + _result.toString());
      } else {
        _result = (4 / 5) * _currentSliderValue;
        listViewItem.add("Reamur : " + _result.toString());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Input(
                myController: sliderController,
              ),
            ),
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 100,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                  sliderController.text = _currentSliderValue.toString();
                  print(_currentSliderValue);
                });
              },
            ),
            Container(
              child: DropdownButton<String>(
                  items: listItem.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: newValue,
                  onChanged: (String? changeValue) {
                    setState(() {
                      newValue = changeValue!;
                      perhitunganSuhu();
                    });
                  }),
            ),
            Result(
              result: _result,
            ),
            SizedBox(
              child: Container(
                  child: Convert(
                konvertHandler: perhitunganSuhu,
              )),
            ),
            Container(child: Text("Riwayat Konversi")),
            Expanded(
                child: ListView(
              children: listViewItem.map((String value) {
                return Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 15),
                    ));
              }).toList(),
            )),
          ],
        ),
      ),
    );
  }
}

class Convert extends StatelessWidget {
  const Convert({
    Key? key,
    required this.konvertHandler,
  }) : super(key: key);

  final Function konvertHandler;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
      onPressed: () {
        konvertHandler();
      },
      child: Text(
        "Konversi Suhu",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.myController,
  }) : super(key: key);

  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],
      keyboardType: TextInputType.number,
    );
  }
}

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.result,
  }) : super(key: key);

  final double result;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "Hasil",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            result.toStringAsFixed(1),
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
