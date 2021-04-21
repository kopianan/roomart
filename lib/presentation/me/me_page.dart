import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:roomart/presentation/me/order_page.dart';

class MePage extends StatefulWidget {
  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[200],
                      offset: Offset(1, 1),
                      blurRadius: 2,
                      spreadRadius: 2)
                ],
                borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Name Here",
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300],
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(2, 3))
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Rp.1.000.000",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(height: 20),
          ListTile(
            title: Text(
              "On Progress Transaction",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.teal[200],
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[300],
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 3))
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Rp.1.000.000",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              MenuTiles(
                color: Colors.blue,
                icon: Icons.person,
                text: "Profil Saya",
                onTap: () {},
              ),
              MenuTiles(
                color: Colors.yellow,
                icon: Icons.list_alt_sharp,
                text: "Daftar Transaksi",
                onTap: () {},
              ),
              MenuTiles(
                color: Colors.green,
                icon: Icons.card_travel_rounded,
                text: "Belanja Saya",
                onTap: () {
                  Get.toNamed(OrderPage.TAG);
                },
              ),
              MenuTiles(
                color: Colors.red,
                icon: Icons.logout,
                text: "Log Out",
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    ));
  }
}

class MenuTiles extends StatelessWidget {
  const MenuTiles({
    Key key,
    @required this.color,
    @required this.icon,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);
  final String text;
  final Color color;
  final IconData icon;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          title: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
          leading: Icon(
            icon,
            color: color,
          ),
        ),
        Divider()
      ],
    );
  }
}
