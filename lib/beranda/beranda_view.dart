import 'dart:js';

import 'package:tubes/beranda/beranda_kangit_appbar.dart';
import 'package:tubes/beranda/beranda_model.dart';
import 'package:tubes/constant.dart';
import 'package:flutter/material.dart';

class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => new _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: Scaffold(
        appBar: new KangItAppBar(),
        body: new Container(
          child: new ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              new Container(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  color: Colors.white,
                  child: new Column(
                    children: <Widget>[
                      _buildPaymentMenu(),
                      _buildkangItServicesMenu(),
                    ],
                  )),
              new Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 16.0),
                child: new Column(
                  children: <Widget>[
                    _buildAsusFeatured(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _kangItServiceList
        .add(new KangItService('acer.png', KangItPalette.menuRide, "ACER"));
    _kangItServiceList
        .add(new KangItService('asus.png', KangItPalette.menuRide, "ASUS"));
    _kangItServiceList
        .add(new KangItService("cisco.png", KangItPalette.menuRide, "CISCO"));
    _kangItServiceList
        .add(new KangItService("hp.png", KangItPalette.menuRide, "HP"));
    _kangItServiceList
        .add(new KangItService("lenovo.png", KangItPalette.menuRide, "LENOVO"));
    _kangItServiceList.add(
        new KangItService("mikrotik.png", KangItPalette.menuRide, "MIKROTIK"));
    _kangItServiceList
        .add(new KangItService("msi.png", KangItPalette.menuRide, "MSI"));
    _kangItServiceList
        .add(new KangItService("more.png", KangItPalette.menuOther, "LAINNYA"));
    _kangItServiceList.add(
        new KangItService("ubiquiti.png", KangItPalette.menuRide, "UBIQUITI"));
    _kangItServiceList
        .add(new KangItService("apple.png", KangItPalette.menuRide, "APPLE"));
    _kangItServiceList.add(
        new KangItService("android.png", KangItPalette.menuRide, "ANDROID"));

    _asusFeaturedList.add(new Asus("ASUS TUF Gaming", "images/tuf.jpg"));
    _asusFeaturedList.add(new Asus("ASUS ROG Strix", "images/strix.jpg"));
    _asusFeaturedList.add(new Asus("ASUS Zephyrus", "images/zephyrus.jpg"));
    _asusFeaturedList.add(new Asus("ASUS A456 UR", "images/Asus-A456UR.jpg"));
    _asusFeaturedList.add(new Asus("ASUS X441", "images/Asus-X441.jpg"));
  }
}

List<KangItService> _kangItServiceList = [];
List<Asus> _asusFeaturedList = [];

Widget _buildPaymentMenu() {
  return new Container(
      height: 120.0,
      decoration: new BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
          ),
          borderRadius: new BorderRadius.all(new Radius.circular(3.0))),
      child: new Column(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(12.0),
            decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                ),
                borderRadius: new BorderRadius.only(
                    topLeft: new Radius.circular(3.0),
                    topRight: new Radius.circular(3.0))),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  "BankMe",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontFamily: "Ubuntu"),
                ),
                new Container(
                  child: new Text(
                    "Rp. 1.000.000",
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontFamily: "Ubuntu"),
                  ),
                )
              ],
            ),
          ),
          new Container(
            padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 12.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset(
                      "icons/icon_transfer.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    new Text(
                      "Transfer",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset(
                      "icons/icon_scan.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    new Text(
                      "Scan QR",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset(
                      "icons/icon_saldo.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    new Text(
                      "Isi Saldo",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset(
                      "icons/icon_menu.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    new Text(
                      "Lainnya",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ));
}

Widget _buildkangItServicesMenu() {
  return new SizedBox(
      width: double.infinity,
      height: 220.0,
      child: new Container(
          margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: GridView.builder(
              physics: ClampingScrollPhysics(),
              itemCount: 8,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (context, position) {
                return _rowKangItService(_kangItServiceList[position]);
              })));
}

Widget _rowKangItService(KangItService kangItService) {
  return new Container(
    child: new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            // showModalBottomSheet<void>(
            //     context: context,
            //     builder: (context) {
            //       return _buildMenuBottomSheet();
            //     });
          },
          child: new Container(
            decoration: new BoxDecoration(
                border: Border.all(color: KangItPalette.grey200, width: 1.0),
                borderRadius: new BorderRadius.all(new Radius.circular(20.0))),
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              kangItService.image,
              height: 30.0,
              width: 60.0,
              color: kangItService.color,
            ),
          ),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 6.0),
        ),
        new Text(kangItService.title, style: new TextStyle(fontSize: 10.0))
      ],
    ),
  );
}

Widget _buildAsusFeatured() {
  return new Container(
    padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 16.0),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Text(
          "ASUS",
          style: new TextStyle(fontFamily: "Ubuntu"),
        ),
        new Padding(
          padding: EdgeInsets.only(top: 8.0),
        ),
        new Text(
          "Pilihan Terlaris",
          style: new TextStyle(fontFamily: "Ubuntu"),
        ),
        new SizedBox(
            height: 172.0,
            child: new ListView.builder(
              itemCount: _asusFeaturedList.length,
              padding: EdgeInsets.only(top: 12.0),
              physics: new ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return _rowAsusFeatured(_asusFeaturedList[index]);
              },
            )),
      ],
    ),
  );
}

Widget _rowAsusFeatured(Asus asus) {
  return new Container(
    margin: EdgeInsets.only(right: 16.0),
    child: new Column(
      children: <Widget>[
        new ClipRRect(
          borderRadius: new BorderRadius.circular(8.0),
          child: new Image.asset(
            asus.image,
            width: 132.0,
            height: 132.0,
          ),
        ),
        new Padding(
          padding: EdgeInsets.only(top: 8.0),
        ),
        new Text(
          asus.title,
        ),
      ],
    ),
  );
}

Widget _buildMenuBottomSheet() {
  return new StatefulBuilder(builder: (c, s) {
    return new SafeArea(
        child: new Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      width: double.infinity,
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(4.0), color: Colors.white),
      child: new Column(children: <Widget>[
        new Icon(
          Icons.drag_handle,
          color: KangItPalette.grey,
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Text(
              "KangIT Services",
              style: new TextStyle(fontFamily: "Ubuntu", fontSize: 18.0),
            ),
            new OutlinedButton(
              onPressed: () {},
              child: new Text(
                "EDIT FAVORITES",
                style: new TextStyle(fontSize: 12.0, color: KangItPalette.blue),
              ),
            ),
          ],
        ),
        new Container(
          height: 300.0,
          child: new GridView.builder(
              physics: new NeverScrollableScrollPhysics(),
              itemCount: _kangItServiceList.length,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (context, position) {
                return _rowKangItService(_kangItServiceList[position]);
              }),
        ),
      ]),
    ));
  });
}
