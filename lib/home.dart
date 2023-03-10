import 'package:diamond_in_the_sky/Second_Page/home_two.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/p1.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              'DIAMOND IN THE SKY',
              style: GoogleFonts.jockeyOne(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24),
            ),
            const Spacer(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FirstButton(
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const HomeTwo())));
                    },
                    title: 'LEARN\nTO\nPLAY',
                  ),
                  SecondButton(
                    press: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.priority_high,
                                color: Colors.red,
                                size: 35,
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.clear,
                                  color: Color(0xFF3366FF),
                                ),
                              ),
                            ],
                          ),
                          content: const Text(
                            '     PRESS GREEN BUTTON\n        AND LEARN FIRST',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          backgroundColor: Colors.black12,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                  width: 7, color: Colors.green)),
                        ),
                      );
                    },
                    title: 'PLAY\nWITH\nSTAR',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FirstButton extends StatelessWidget {
  const FirstButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;

  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [
                  Color(0xFF3366FF),
                  Color(0xFF00CCFF),
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
            shape: BoxShape.circle,
            color: Colors.green,
            border: Border.all(width: 8, color: Colors.black)),
        child: Center(
            child: Text(
          title,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
    );
  }
}

class SecondButton extends StatelessWidget {
  const SecondButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;

  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.deepOrange[800],
            border: Border.all(width: 8, color: Colors.black)),
        child: Center(
            child: Text(
          title,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
    );
  }
}
