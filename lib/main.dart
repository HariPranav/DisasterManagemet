import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Open Hack'),
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            DrawerHeader(
              child: new CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 80.0,
                child: Image.network('https://openhack.tech/images/logo.png'),
              ),
            ),
            ListTile(
              title: Icon(Icons.local_activity),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Icon(Icons.local_phone),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ]),
        ),
        body: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Emergency()));
              },
              child: Container(
                // color: Colors.black,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.black)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: new Image.network(
                        "https://images.vexels.com/media/users/3/151710/isolated/preview/b76de73edf814db22e2ae74c01739b5c-doctor-avatar-stroke-icon-by-vexels.png",
                        height: 500,
                        width: 150,
                      ),
                      title: Text('Health Condition'),
                      subtitle: Text(
                          'Click  to monitor the condition of your health and to easily alert the authorities '),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondRoute()));
              },
              child: Container(
                // color: Colors.black,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.black)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: new Image.network(
                        "http://cdn.onlinewebfonts.com/svg/img_222690.png",
                        height: 500,
                        width: 150,
                      ),
                      title: Text('Save Our Souls'),
                      subtitle: Text(
                          'Click This if you are in danger , By clicking this your location and your nearby contacts will be notified'),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Container(
                // color: Colors.black,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.black)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: new Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRioi6VAlNNsOWH2MRniDAUQQeUKUPYS6y6oGzXcLoGhI81E0gj",
                        fit: BoxFit.contain,
                        height: 500,
                        width: 150,
                      ),
                      title: Text('Emergency'),
                      subtitle: Text(
                          'Click This in case of any natural disaster ,Then select the particular tyoe to get real time help and updates'),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Container(
                // color: Colors.black,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.black)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: new Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSL2D8xL2ohwalT7LMYaESIxtxMT8lJrz74TZAFeQs8TG53YUhm",
                        fit: BoxFit.contain,
                        height: 500,
                        width: 150,
                      ),
                      title: Text('Request for Items'),
                      subtitle: Text(
                          'Click This to request for items in the flood , Select the number of items and the location at which the goods are neededs'),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('Your Coordinates are :',
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              decoration: new BoxDecoration(
                  border: new Border.all(color: Colors.black)),
              child: Image.network(
                "https://raw.githubusercontent.com/HariPranav/BENIMAGES/master/map.png",
                width: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class Emergency extends StatefulWidget {
  @override
  _EmergencyState createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Open Hack'),
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            DrawerHeader(
              child: new CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 80.0,
                child: Image.network('https://openhack.tech/images/logo.png'),
              ),
            ),
            ListTile(
              title: Icon(Icons.local_activity),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Icon(Icons.local_phone),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ]),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTfru4jUpzIcyJjDmbxQgnnTFc9dcqcL0wvqRJzyp5iOZWuQxZ7'),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    'https://www.ses.vic.gov.au/documents/112015/4611731/what+we+do+-+flood.png/4ec9df32-6af7-474c-798b-5b4c1e5e9c22?t=1588221341000'),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9r-mhet-_UzaLV1NV1zf50vtc5fH1ZeM8xAg9MNtzmGHuTWWu'),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/7/79/Cyclone.png'),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    'https://mir-s3-cdn-cf.behance.net/project_modules/disp/cd425417763591.562bed545cbb6.png'),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQTUGtSAMgqcpwsQXh2I0A6CQl40YmINOq1TTOUIP8k5MgZq15q'),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTBUHkGeUmfF2ls16IHKMb5TpTN6y_IHRANeg&usqp=CAU'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String url = 'http://api.rebuild.org/api';

  Future<String> makeRequest() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
            child: new RaisedButton(
      child: new Text('Make Request'),
      onPressed: makeRequest,
    )));
  }
}
// This example uses the Google Books API to search for books

// class HealthCondition extends StatefulWidget {
//   @override
//   _HealthConditionState createState() => _HealthConditionState();
// }

// class _HealthConditionState extends State<HealthCondition> {
//   int _itemCount = 0;
//   @override
//   Widget build(BuildContext context) {
//      return new ListTile(
//       title: new Text("This is ameriaca"),
//       trailing: new Row(
//         children: <Widget>[
//            _itemCount!=0? new  IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount--),):new Container(),
//             new Text(_itemCount.toString()),
//             new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount++))
//         ],
//       ),

//     );
//   }
// }
