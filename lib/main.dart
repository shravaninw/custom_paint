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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'phoneNo',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: '+1 245 42 29 234',
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Login'))
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
    path0.moveTo(0, size.height * 0.6604333);
    path0.quadraticBezierTo(size.width * 0.2755474, size.height * 0.6651083,
        size.width * 0.3673966, size.height * 0.6666667);
    path0.quadraticBezierTo(size.width * 0.5098054, size.height * 0.6979333,
        size.width * 0.6694161, 0);
    path0.lineTo(0, 0);

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
    path0.moveTo(size.width * 0.7956204, 0);
    path0.quadraticBezierTo(size.width * 0.5188564, size.height * 0.5616667,
        size.width * 0.4671533, size.height * 0.7700000);
    path0.cubicTo(
        size.width * 0.4172749,
        size.height * 0.9900000,
        size.width * 0.8649635,
        size.height * 0.9000000,
        size.width * 0.9197080,
        size.height * 0.9100000);
    path0.quadraticBezierTo(size.width * 0.9872263, size.height * 0.9100000,
        size.width, size.height * 0.8200000);
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
      ..color = const Color.fromARGB(133, 13, 77, 179)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.7946959, 0);
    path0.quadraticBezierTo(size.width * 0.6482238, size.height * 0.3219667,
        size.width * 0.5916545, size.height * 0.4478000);
    path0.quadraticBezierTo(size.width * 0.4885401, size.height * 0.5521333,
        size.width * 0.4773236, size.height * 0.3684667);
    path0.lineTo(size.width * 0.6123114, 0);
    path0.lineTo(size.width * 0.7946959, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
