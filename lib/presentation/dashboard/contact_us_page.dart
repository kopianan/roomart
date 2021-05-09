import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:roomart/presentation/config_widgets/widget_collection.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatefulWidget {
  static final String TAG = '/contact_us_page';

  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: FutureBuilder<String>(
        future: rootBundle.loadString("assets/file/contact_us.txt"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return buildBody(snapshot);
          }
          return Container();
        },
      ),
    );
  }

  Widget buildBody(AsyncSnapshot<String> snapshot) {
    return Column(
      children: [
        SizedBox(height: 30),
        getLogoOnAuthPage,
        Container(
            child: Html(
          data: snapshot.data,
          onLinkTap: (val) {
            launch(val);
          },
        )),
      ],
    );
  }
}
