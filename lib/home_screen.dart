import 'package:flutter/material.dart';
import 'package:ha_lan/color.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return _myHomeScreen(context);
  }

  Widget _myHomeScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.menu,
              size: 30.0,
            ),
          ),
        ),
        title: Center(child: Text("Đặt vé xe")),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.notifications,
              size: 30.0,
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Điểm khởi hành'),
              subtitle: Text('Hà Nội'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Điểm đến'),
              subtitle: Text('Chọn điểm đến'),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.calendar_today),
                    title: Text('Ngày khởi hành'),
                    subtitle:
                        Text(DateFormat('dd/MM/yyyy ').format(DateTime.now())),
                  ),
                ),
              ),
//
              SizedBox(
                height: 72.0,
                child: RaisedButton.icon(
                  icon: Icon(Icons.search),
                  label: Text('Tìm chuyến xe'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),



          ),
        ],
      ),
    );
  }
}
