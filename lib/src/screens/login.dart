import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  static String id = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0,),
              Image.asset('images/logo.png',
                height: 300,
              ),
              SizedBox(height: 20.0,),
              _userTextField(),
              SizedBox(height: 25,),
              _passwordTextField(),
              SizedBox(height: 20,),
              _buttonLogin(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'example@gmail.com',
                  labelText: 'email'
              ),
              onChanged: (value){

              },
            ),
          );
        }
    );
  }
  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              decoration: const InputDecoration(
                icon: Icon(Icons.lock),
                hintText: 'password',
                labelText: 'password'
              ),
              onChanged: (value){

              },
            ),
          );
        }
    );
  }
  Widget _buttonLogin() {
    return Container(
      //builder: (BuildContext context, AsyncSnapshot snapshot){
      margin: const EdgeInsets.only(top: 30.0),
        child: ElevatedButton(

          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            elevation: 10,

          ),
          onPressed: (){},

          child: Container(

            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
            child: const Text('LOG IN'),

          )
        )
    );
  }
}