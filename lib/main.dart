import 'package:flutter/material.dart';
import 'package:flutter_sun_moon_custom_clipper/black_background.dart';
import 'package:flutter_sun_moon_custom_clipper/moon_clipper.dart';
import 'package:flutter_sun_moon_custom_clipper/star_clipper.dart';
import 'package:flutter_sun_moon_custom_clipper/sun_clipper.dart';
import 'package:flutter_sun_moon_custom_clipper/white_background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(250),
                  ),
                  width: 500,
                  height: 500,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: ClipPath(
                            clipper: MoonClipper(),
                            child: Container(
                              color: Colors.white,
                              width: 200,
                              height: 200,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 280,
                        top: 30,
                        child: ClipPath(
                          clipper: StarClipper(),
                          child: Container(
                            color: Colors.white,
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 240,
                        top: 100,
                        child: ClipPath(
                          clipper: StarClipper(),
                          child: Container(
                            color: Colors.white,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 400,
                        top: 250,
                        child: ClipPath(
                          clipper: StarClipper(),
                          child: Container(
                            color: Colors.white,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 350,
                        top: 400,
                        child: ClipPath(
                          clipper: StarClipper(),
                          child: Container(
                            color: Colors.white,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 270,
                        top: 320,
                        child: ClipPath(
                          clipper: StarClipper(),
                          child: Container(
                            color: Colors.white,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 250,
                        top: 430,
                        child: ClipPath(
                          clipper: StarClipper(),
                          child: Container(
                            color: Colors.white,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ClipPath(
                  clipper: WhiteBackgroundClipper(),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(250),
                            bottomLeft: Radius.circular(250))),
                    width: 350,
                    height: 500,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: ClipPath(
                              clipper: SunClipper(),
                              child: Container(
                                color: Colors.black,
                                width: 180,
                                height: 180,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
