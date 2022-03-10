import 'package:flutter/material.dart';

class login_screan extends StatelessWidget {
  var passwordcontroller = TextEditingController();
  var emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'login',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40.0,
              ),
              TextFormField(
                onFieldSubmitted: (String value) {
                  print(value);
                },
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email adress',
                  prefixIcon: Icon(
                    Icons.mail,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              TextFormField(
                onFieldSubmitted: (String value) {
                  print(value);
                },
                controller: passwordcontroller,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'password',
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(
                    onPressed: () {
                      print(emailcontroller.text);
                      print(passwordcontroller.text);
                    },
                    child: Text(
                      'login',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account ?'),
                  TextButton(onPressed: () {}, child: Text('Register')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
