import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              CustomPaint(
                size: Size(MediaQuery.of(context).size.width,
                    MediaQuery.of(context).size.height - 400),
                painter: LPSCustomPainter(),
              ),
              Positioned(
                  top: 80,
                  left: 50,
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              CustomPaint(
                size: Size(MediaQuery.of(context).size.width,
                    MediaQuery.of(context).size.height - 400),
                painter: RPSCustomPainter(),
              ),
              Positioned(top: 80, right: 50, child: Icon(Icons.ten_k_rounded)),
              CustomPaint(
                size: Size(
                    MediaQuery.of(context).size.width,
                    (MediaQuery.of(context).size.height - 400)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: TPSCustomPainter(),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 0, 8),
              child: Text(
                'Phone Number',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: '+1 245 42 29 234',
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                onPressed: () {},
                child: Text('Login')),
          )
        ],
      ),
    ));
  }
}

class LPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 52, 89)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height * 0.8300000);
    path0.quadraticBezierTo(size.width * 0.1929927, size.height * 0.8351000,
        size.width * 0.2738929, size.height * 0.8326000);
    path0.quadraticBezierTo(size.width * 0.3537470, size.height * 0.8448000,
        size.width * 0.4160584, size.height * 0.6633333);
    path0.lineTo(size.width * 0.6666180, 0);
    path0.lineTo(0, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.7992701, 0);
    path0.quadraticBezierTo(size.width * 0.5447932, size.height * 0.6352000,
        size.width * 0.4604623, size.height * 0.8421000);
    path0.quadraticBezierTo(size.width * 0.4225304, size.height * 0.9773000,
        size.width * 0.5246472, size.height * 1.0037667);
    path0.quadraticBezierTo(size.width * 0.8090024, size.height * 1.0100000,
        size.width * 0.9093674, size.height * 1.0100000);
    path0.cubicTo(
        size.width * 0.9221411,
        size.height * 1.0162667,
        size.width * 0.9413139,
        size.height * 0.9900000,
        size.width * 0.9498297,
        size.height * 0.9771000);
    path0.quadraticBezierTo(size.width * 0.9601703, size.height * 0.9600000,
        size.width * 1.0015328, size.height * 0.8837667);
    path0.lineTo(size.width, 0);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class TPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(110, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.8012652, 0);
    path0.quadraticBezierTo(size.width * 0.6584672, size.height * 0.3808000,
        size.width * 0.6041363, size.height * 0.5049667);
    path0.quadraticBezierTo(size.width * 0.4800000, size.height * 0.5536333,
        size.width * 0.4428224, size.height * 0.3700000);
    path0.lineTo(size.width * 0.5717762, size.height * 0.0033333);
    path0.lineTo(size.width * 0.8012652, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
