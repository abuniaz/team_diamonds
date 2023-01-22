import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class TemperatureHome extends StatefulWidget {
  const TemperatureHome({Key? key}) : super(key: key);

  @override
  State<TemperatureHome> createState() => _TemperatureHomeState();
}

class _TemperatureHomeState extends State<TemperatureHome> {
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/B2.png'), fit: BoxFit.cover)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Opacity(
              opacity: 0.6,
              child: Container(
                height: 500,
                width: 430,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Stage',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.purple,
                          size: 25,
                        ),
                        Icon(Icons.star, size: 25, color: Colors.white),
                        Icon(Icons.star, size: 25, color: Colors.white),
                        Icon(Icons.star, size: 25, color: Colors.white),
                        Icon(Icons.star, size: 25, color: Colors.white),
                      ],
                    ),
                    Row(
                      children: const [
                        Text('Label',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 25,
                        ),
                        Icon(Icons.star, size: 25, color: Colors.orange),
                        Icon(Icons.star, size: 25, color: Colors.white),
                        Icon(Icons.star, size: 25, color: Colors.white),
                        Icon(Icons.star, size: 25, color: Colors.white),
                      ],
                    ),
                    Center(
                      child: Image.asset(
                        'images/n1.gif',
                        height: 235,
                        width: 235,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'images/h1.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Opacity(
              opacity: 0.7,
              child: Container(
                height: 500,
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SfSlider.vertical(
                        min: 00,
                        max: 10,
                        value: _value,
                        interval: 2,
                        dividerShape: const SfDividerShape(),
                        showTicks: true,
                        showLabels: true,
                        activeColor: Colors.pink,
                        inactiveColor: Colors.white,
                        minorTicksPerInterval: 0,
                        onChanged: (dynamic value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RotatedBox(
                          quarterTurns: 3,
                          child: Container(
                              height: 50,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 226, 30, 233),
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(width: 3, color: Colors.blue)),
                              child: const Center(
                                  child: Text(
                                'Temperature',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ))),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Image.asset(
                          'images/f1.png',
                          height: 50,
                          width: 50,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
