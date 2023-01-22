import 'package:diamond_in_the_sky/thrid_page/third_page.dart';
import 'package:flutter/material.dart';

class HomeTwo extends StatelessWidget {
  const HomeTwo({Key? key}) : super(key: key);

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
                    'images/e1.gif',
                    height: 250,
                    width: 250,
                  ),
                ],
              ),
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
                        'images/p3.png',
                        fit: BoxFit.cover,
                        // height: 500,
                        // width: 320,
                      )),
                  // const SizedBox(
                  //   width: 40,
                  // ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const HomeThird())));
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
