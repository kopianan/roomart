import 'package:flutter/material.dart';
import 'package:roomart/domain/raja_ongkir/full_data_model.dart';
import 'package:roomart/domain/raja_ongkir/province_data_model.dart';

class AddAddressPage extends StatefulWidget {
  static final String TAG = '/address_page';
  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  TextEditingController nama = TextEditingController();
  TextEditingController noHp = TextEditingController();
  TextEditingController alamat = TextEditingController();
  String provinceName;
  String cityName;
  String mprovinceid;
  String mcityid;

  List<FullDataModel> listOfCity = [];
  List<ProvinceDataModel> listOfProvince = [];

  String realName;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SingleChildScrollView(
      //   child: Container(
      //     margin: EdgeInsets.all(15),
      //     padding: EdgeInsets.all(10),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       mainAxisSize: MainAxisSize.max,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: <Widget>[
      //         TextField(
      //           controller: nama,
      //           decoration: InputDecoration(
      //             labelText: 'Nama Penerima',
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(10.0),
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 20,
      //         ),
      //         TextField(
      //           controller: noHp,
      //           decoration: InputDecoration(
      //             labelText: 'Nomor Handphone',
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(10.0),
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 20,
      //         ),
      //         TextField(
      //           maxLines: 5,
      //           controller: alamat,
      //           decoration: InputDecoration(
      //             labelText: 'AlamatLengkap',
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(10.0),
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 20,
      //         ),
      //         Container(
      //             child: DropdownButtonFormField<ProvinceDataModel>(
      //                 isExpanded: false,
      //                 hint: Text("Pilih Provinsi"),
      //                 value: null,
      //                 items: listOfProvince.map((item) {
      //                   return new DropdownMenuItem(
      //                     child:
      //                         SizedBox(width: 250, child: Text(item.province)),
      //                     value: item.province.toString(),
      //                   );
      //                 }).toList(),
      //                 onChanged: (newVal) {
      //                   provinceName = null;
      //                   cityName = null;

      //                   listOfCity.clear();
      //                   provinceName = newVal;
      //                   listOfProvince.forEach((dta) {
      //                     if (dta.province.toString() == provinceName) {
      //                       setState(() {
      //                         mprovinceid = dta.provinceId;
      //                         address.setProvince(dta.provinceId, dta.province);
      //                         getCityData(address.provinceId, false);
      //                       });
      //                     }
      //                   });
      //                 })),
      //         Container(
      //             child: DropdownButton(
      //                 hint: Text("Pilih Kota"),
      //                 value: cityName,
      //                 items: listOfCity.map((item) {
      //                   return new DropdownMenuItem(
      //                     child: SizedBox(
      //                         width: 250,
      //                         child: new Text(item.cityName.toString())),
      //                     value: item.cityName.toString(),
      //                   );
      //                 }).toList(),
      //                 onChanged: (newVal) {
      //                   setState(() {
      //                     cityName = newVal;
      //                     listOfCity.forEach((dta) {
      //                       if (cityName == dta.cityName) {
      //                         mcityid = dta.cityId;
      //                         print(mcityid);
      //                         address.setCity(
      //                             dta.cityId, dta.cityName.toString());
      //                       }
      //                     });
      //                   });
      //                 })),
      //         Container(
      //           width: double.infinity,
      //           color: Colors.blueAccent,
      //           child: FlatButton(
      //             onPressed: () {
      //               print(address.getUserData.toJson());
      //               LoginModel current = address.getClonseUserData;
      //               current.province = provinceName;
      //               current.city = cityName;
      //               current.address = alamat.text;
      //               current.phone = noHp.text;
      //               current.fullName = nama.text;
      //               address.makeCloneUserData(current);
      //               address.setUserData(current); //Said
      //               Navigator.pop(context);
      //             },
      //             child: Text(
      //               "Simpan",
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
