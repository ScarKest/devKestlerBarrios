import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(50),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "lib/assets/images/dash.png",
                width: size.width * 0.3,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 50),
              name(context)
            ],
          )
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
  return SizedBox(
    width: 50.w,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Kestler Barrios", style: style),
        Text("Flutter Developer", style: style),
      ],
    ),
  );
}
