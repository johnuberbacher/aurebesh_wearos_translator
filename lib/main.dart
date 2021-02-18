import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF000000)),
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          child: WatchShape(
            builder: (context, shape, child) {
              return SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 30.0,
                    right: 30.0,
                    left: 30.0,
                    bottom: 15.0,
                  ),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      LetterIndicator(letter: "a"),
                      LetterIndicator(letter: "b"),
                      LetterIndicator(letter: "c"),
                      LetterIndicator(letter: "d"),
                      LetterIndicator(letter: "e"),
                      LetterIndicator(letter: "f"),
                      LetterIndicator(letter: "g"),
                      LetterIndicator(letter: "h"),
                      LetterIndicator(letter: "i"),
                      LetterIndicator(letter: "j"),
                      LetterIndicator(letter: "k"),
                      LetterIndicator(letter: "l"),
                      LetterIndicator(letter: "m"),
                      LetterIndicator(letter: "n"),
                      LetterIndicator(letter: "o"),
                      LetterIndicator(letter: "p"),
                      LetterIndicator(letter: "q"),
                      LetterIndicator(letter: "r"),
                      LetterIndicator(letter: "s"),
                      LetterIndicator(letter: "t"),
                      LetterIndicator(letter: "u"),
                      LetterIndicator(letter: "v"),
                      LetterIndicator(letter: "w"),
                      LetterIndicator(letter: "x"),
                      LetterIndicator(letter: "y"),
                      LetterIndicator(letter: "z"),
                    ],
                  ),
                ),
              );
            },
            child: AmbientMode(
              builder: (context, mode, child) {
                return Text(
                  'Mode: ${mode == WearMode.active ? 'Active' : 'Ambient'}',
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

Widget LetterIndicator({String letter}) {
  return Container(
    width: 50.0,
    margin: const EdgeInsets.only(
      bottom: 15.0,
    ),
    child: Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            // 'Shape: ${shape == WearShape.round ? 'round' : 'square'}', //
            letter.toUpperCase(),
            textAlign: TextAlign.right,
            style: TextStyle(
              fontFamily: 'Aurebesh',
              fontSize: 30,
              height: 1,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              shadows: <Shadow>[
                Shadow(
                  color: Colors.blue,
                  blurRadius: 10,
                  offset: Offset(0, 0),
                ),
                Shadow(
                  color: Colors.blue,
                  blurRadius: 10,
                  offset: Offset(0, 0),
                ),
                Shadow(
                  color: Colors.blue,
                  blurRadius: 5,
                  offset: Offset(0, 0),
                ),
                Shadow(
                  color: Colors.blue,
                  blurRadius: 5,
                  offset: Offset(0, 0),
                ),
                Shadow(
                  color: Colors.blue,
                  blurRadius: 5,
                  offset: Offset(0, 0),
                ),
              ],
            ),
          ),
          Text(
            letter.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 9,
              height: 1.5,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.icon,
      this.hint,
      this.obsecure = false,
      this.validator,
      this.onSaved});
  final FormFieldSetter<String> onSaved;
  final Icon icon;
  final String hint;
  final bool obsecure;
  final FormFieldValidator<String> validator;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        onSaved: onSaved,
        validator: validator,
        autofocus: true,
        obscureText: obsecure,
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
            hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 3,
              ),
            ),
            prefixIcon: Padding(
              child: IconTheme(
                data: IconThemeData(color: Theme.of(context).primaryColor),
                child: icon,
              ),
              padding: EdgeInsets.only(left: 30, right: 10),
            )),
      ),
    );
  }
}
