import 'package:diamond_in_the_sky/Temperature/home_one.dart';
import 'package:flutter/material.dart';

class HomeFourth extends StatelessWidget {
  const HomeFourth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/B2.png'), fit: BoxFit.cover)),
        child: Column(
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
              width: 300,
            )),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'images/h1.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.teal[700],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                          child: Text(
                        'Distance',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TemperatureHome()));
                    },
                    child: Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.teal[700],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                          child: Text(
                        'Temperature',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.teal[700],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                          child: Text(
                        'Mass',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    )),
                Image.asset(
                  'images/f1.png',
                  height: 50,
                  width: 50,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
