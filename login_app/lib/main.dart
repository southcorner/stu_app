import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title:'Flutter Login'),
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key,this.title}) : super (key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

      @override
      Widget build(BuildContext context) {

        final emailField = TextField(
          obscureText: false,
          style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
        final passwordField = TextField(
          obscureText: true,
          style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
        final loginButton = new Container(
          width: 320.0,
          height: 60.0,
          alignment: FractionalOffset.center,
          decoration: new BoxDecoration(
            color: const Color.fromRGBO(247, 64, 106, 1.0),
            borderRadius: new BorderRadius.all(const Radius.circular(30.0)),
          ),
          child: new Text(
            "Sign In",
            style: new TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.3,
            ),
          ),
        );
        // final loginButon = Material(
        //   elevation: 5.0,
        //   borderRadius: BorderRadius.circular(30.0),
        //   color: Color(0xff01A0C7),
        //   child: MaterialButton(
        //     minWidth: MediaQuery.of(context).size.width,
        //     padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        //     onPressed: () {},
        //     child: Text("Login",
        //         textAlign: TextAlign.center,
        //         style: new TextStyle(
        //               color: Colors.white,
        //               fontSize: 20.0,
        //               fontWeight: FontWeight.w300,
        //               letterSpacing: 0.3,
        //             ),
        // );

        return Scaffold(
          body: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // SizedBox(
                    //   height: 155.0,
                    //   child: Image.asset(
                    //     "assets/logo.png",
                    //     fit: BoxFit.contain,
                    //   ),
                    // ),
                    SizedBox(height: 45.0),
                    emailField,
                    SizedBox(height: 25.0),
                    passwordField,
                    SizedBox(
                      height: 35.0,
                    ),
                    loginButton,
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
}