import 'package:diamond_in_the_sky/Fourth_Page/home_fourth.dart';
import 'package:flutter/material.dart';

class HomeThird extends StatelessWidget {
  const HomeThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/B2.png'), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    'images/m2.gif',
                    height: 250,
                    width: 250,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
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
                  Container(
                      height: 110,
                      width: 200,
                      decoration: const BoxDecoration(),
                      child: Image.asset(
                        'images/e2.png',
                        fit: BoxFit.cover,
                        // height: 500,
                        // width: 320,
                      )),
                  const SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeFourth()));
                      },
                      child: Image.asset(
                        'images/f1.png',
                        height: 50,
                        width: 50,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
