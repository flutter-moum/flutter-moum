import 'package:flutter/material.dart';
import 'package:flutter_moum_plugins/style.dart';

class MoumPlugins extends StatefulWidget {
  MoumPlugins({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MoumPluginsState createState() => _MoumPluginsState();
}

class _MoumPluginsState extends State<MoumPlugins> {

  final plugins = ['open_appstore', 'screenshot_callback', 'hardware_buttons', 'sim_info'];

  AssetImage assetImage;

  @override
  void initState() {
    assetImage = AssetImage('assets/group/member/ic_user_super.png');
    super.initState();
  }

  final topAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: primaryColor,
    title: Text('Flutter Moum Plugins'),
  );

  final makeBottom = Container(
    height: 55.0,
    child: BottomAppBar(
      color: primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.blur_on, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.hotel, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_box, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: _buildList(),
    );
  }
  Widget _buildList() {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: plugins.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildCard(index);
        },
      ),
    );
  }

  Widget _buildCard(int index) {
    return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: cardDecoration),
        child: _buildTile(index),
      ),
    );
  }

  Widget _buildTile(int index) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, '/${plugins[index]}');
      },
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(Icons.dashboard, color: Colors.white30),
      ),
      title: Text(
        plugins[index],
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Row(
        children: <Widget>[
          Icon(Icons.android, color: Colors.green, size: 15.0,),
          SizedBox(width: 3.0,),
          ImageIcon(AssetImage('assets/apple.png'), color: Colors.grey, size: 15.0,),
          Text(" Supported", style: TextStyle(color: Colors.white70))
        ],
      ),
      trailing:
      Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0));
  }

}