import 'package:flutter/material.dart';
import 'package:open_appstore/open_appstore.dart';

class OpenAppstorePlugin extends StatefulWidget {
  OpenAppstorePlugin({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _OpenAppstorePlugin createState() => _OpenAppstorePlugin();
}

class _OpenAppstorePlugin extends State<OpenAppstorePlugin> {

  final androidController = TextEditingController();
  final iOSController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
            body: new Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new Container(
                          width: 200.0,
                          child: TextField(
                            controller: androidController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'AndroidPackageName'
                            ),
                          )
                      ),
                      new Container(
                          width: 200.0,
                          child: TextField(
                            controller: iOSController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'iOSPackageName',
                            ),
                          )
                      ),
                      new Container(
                          width: 200.0,
                          child: RaisedButton(
                              child: Text('Move to AppStore'),
                              color: Colors.blue,
                              onPressed: () => OpenAppstore.launch(androidAppId: androidController.text, iOSAppId: iOSController.text)
                          )
                      )]
                )
            )
        )
    );
  }
}