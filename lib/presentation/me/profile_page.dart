import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static final String TAG = '/profile_page';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Container(),
    );
  }
}
