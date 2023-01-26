import 'package:flutter/material.dart';
import 'package:inventory/src/screens/signUp.dart';

class LoginPage extends StatefulWidget{
  static String route = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}
// load bottom video 47 login
class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFF0097A7),
                    Color(0xFF80DEEA)
                  ]
                )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top:50),
                height: 250,
                child: Image.asset('images/logo2.png')
            ),
            Transform.translate(
              offset: const Offset(0, -30),
              child: Center(
                child: SingleChildScrollView(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 250),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const SizedBox(height: 20.0,),
                          _userTextField(),
                          const SizedBox(height: 25,),
                          _passwordTextField(),
                          const SizedBox(height: 20,),
                          _buttonSignIn(),
                          const SizedBox(height: 20,),
                          _buttonSignUp(),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            )
          ],

        ),
      );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
  Widget _buttonSignIn() {
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
  Widget _buttonSignUp() {
    return Container(
        margin: const EdgeInsets.only(top: 10.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Does not have an account?"),
              TextButton(
                  onPressed: (){
                    _goToSignUpPage(context);
                  },
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text('Sign Up'),
              )
            ],
        )
    );
  }
  void _goToSignUpPage(BuildContext context){
    Navigator.of(context).pushNamed(SignUpPage.route);
  }
}