import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(50),
        children: [
          name(context),
          const SizedBox(height: 100),
          about(context),
        ],
      ),
    );
  }
}

Widget name(BuildContext context) {
  var style = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  var size = MediaQuery.of(context).size;

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        "lib/assets/images/dash.png",
        width: size.width * 0.3,
        fit: BoxFit.cover,
      ),
      const SizedBox(width: 50),
      SizedBox(
        width: 50.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Kestler Barrios", style: style),
            Text("Flutter Developer", style: style),
          ],
        ),
      ),
    ],
  );
}

Widget about(BuildContext context) {
  var style = TextStyle(
    fontSize: 5.sp,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  return Row(
    children: [
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.3,
        child: const CircleAvatar(
          backgroundImage: AssetImage("lib/assets/images/me.jpeg"),
        ),
      ),
      Text("Sobre Mi: Programador del framework Flutter", style: style)
    ],
  );
}
