import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.grey[900], // navigation bar color
    statusBarColor: Colors.grey[850], // status bar color
  ));

  runApp(MaterialApp(home: News()));
}

_launchURL(String url) async {
  //const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('最新文章'),
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        centerTitle: true,
      ),
      drawer: buildDrawer(context),
      body:Text('123'),
    );
  }
}

class cookieCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('關於作者'),
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        centerTitle: true,
      ),
      drawer: buildDrawer(context),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent.ftpe4-1.fna.fbcdn.net/v/t1.0-9/19961504_251336972049096_817538213743408467_n.jpg?_nc_cat=103&_nc_sid=85a577&_nc_ohc=cZvA3CC_pBEAX82763v&_nc_ht=scontent.ftpe4-1.fna&oh=814a9928920aee7ebcca5f04628af91e&oe=5EEEF36C'),
                radius: 80.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              '餅乾',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.mail),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          'facebook',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () =>
                        _launchURL('https://www.facebook.com/Meekcivik/'),
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: RaisedButton(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.phone),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          'GitHub',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () =>
                        _launchURL('https://github.com/cookieopjax'),
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
Drawer buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        Container(
          height: 80.0,
          color: Colors.grey[800],
          alignment: Alignment.center,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              Image(
                image:NetworkImage('http://35.229.209.153/wp-content/uploads/2020/03/cropped-chemical-1.png'),
                width: 45.0,
              ),
              SizedBox(width: 6.0),
              Text(
                '餅乾資訊站',
                style: TextStyle(color: Colors.white, fontSize: 35.0),
              ),
            ],
          ),
        ),

        ListTile(
          title: Text('最新文章'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => News()));
          },
        ),
        ListTile(
          title: Text('關於作者'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => cookieCard()));
          },
        ),
      ],
    ),
  );
}