import 'package:flutter/material.dart';

class bmiresult extends StatelessWidget {
  bool is_male;
  int result;
  int age;
  bmiresult({
    required this.is_male,
    required this.result,
    required this.age,
  }) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI RESULT '),
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_left_sharp,
              )),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'GENDER : ${is_male ? 'MALE' : 'FEMALE'}',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              Text(
                'RESULT : ${result}',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              Text(
                'AGE : ${age}',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ],
          ),
        ));
  }
}
