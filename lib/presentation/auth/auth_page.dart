import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  static final String TAG = '/auth_page';
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "Silahkan register atau login untuk bisa bertransaksi.",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
            ],
          )),
          SliverPadding(padding: EdgeInsets.only(top: 25)),
          SliverToBoxAdapter(
            child: Container(
                height: 200,
                width: 200,
                child: Image.asset('assets/roomart_logo2.png')),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ))),
              SizedBox(height: 20),
              Container(
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                      color: Color(0xFF673EEC),
                      onPressed: () {},
                      child: Text(
                        "Register ",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )))
            ],
          ))
        ],
      ),
    );
  }
}
