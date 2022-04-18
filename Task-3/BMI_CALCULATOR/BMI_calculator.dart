import 'package:first_app/BMI_result.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class BMI_calc extends StatefulWidget {
  const BMI_calc({Key? key}) : super(key: key);

  @override
  State<BMI_calc> createState() => _BMI_calcState();
}

class _BMI_calcState extends State<BMI_calc> {
  bool is_male = true;
  double height = 120;
  int age = 20, weight = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      body: Column(children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      is_male = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: is_male ? Colors.blue : Colors.grey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/male sign.png'),
                          height: 90,
                          width: 90,
                        ),
                        Text(
                          "MALE",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      is_male = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: !is_male ? Colors.blue : Colors.grey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/female sign.png'),
                          height: 90,
                          width: 90,
                        ),
                        Text(
                          "FEMALE",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey[400],
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'Cm',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Slider(
                        value: height,
                        min: 80.0,
                        max: 220,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        })
                  ]),
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[400],
                  ),
                  child: Column(
                    children: [
                      Text('Age',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      Text(
                        '$age',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w900),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            heroTag: 'age++',
                            mini: true,
                            child: Icon(Icons.add),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            heroTag: 'age--',
                            mini: true,
                            child: Icon(Icons.remove),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[400],
                  ),
                  child: Column(
                    children: [
                      Text('Weight',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      Text(
                        '$weight',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w900),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            heroTag: 'weight++',
                            mini: true,
                            child: Icon(Icons.add),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            mini: true,
                            heroTag: 'weight--',
                            child: Icon(Icons.remove),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
        Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              onPressed: () {
                var result = weight / pow(height / 100, 2);
                print(result.round());
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => bmiresult(is_male: is_male , result: result.round() , age: age,)));
              },
              height: 50,
              child: Text(
                'calculate',
                style: TextStyle(color: Colors.white),
              ),
            )),
      ]),
    );
  }
}
