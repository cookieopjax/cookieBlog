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
            SizedBox(height: 20.0),
            Text(
              '餅乾',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '普通的資工系學生、射擊遊戲愛好者、略懂攝影、平面設計、影音剪輯、電繪。\n\n覺得中文區域的程式教學過少，因此想寫些中文教學來分享自己所學。',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 100.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        child: Row(
                          children: <Widget>[
                            Image(
                              image: NetworkImage('https://upload.cc/i1/2020/05/25/B4nDfU.png'),
                              width:20.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0
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
                            Image(
                              image: NetworkImage('https://upload.cc/i1/2020/05/25/wMsvRu.png'),
                              width:20.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              'Github',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0
                              ),
                            ),
                          ],
                        ),
                        onPressed: () =>
                            _launchURL('https://www.facebook.com/Meekcivik/'),
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        child: Row(
                          children: <Widget>[
                            Image(
                              image: NetworkImage('https://upload.cc/i1/2020/05/25/n1VC82.png'),
                              width:20.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              'Instagram',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0
                              ),
                            ),
                          ],
                        ),
                        onPressed: () =>
                            _launchURL('https://www.instagram.com/vigor01690/'),
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
                            Image(
                              image: NetworkImage('https://upload.cc/i1/2020/05/25/WHlBA6.png'),
                              width:20.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              'Youtube',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0
                              ),
                            ),
                          ],
                        ),
                        onPressed: () =>
                            _launchURL('https://www.youtube.com/channel/UCJuPCbPknZ2R5M6KoFjVhSQ?view_as=subscriber'),
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'http://35.229.209.153/wp-content/uploads/2020/03/cropped-IMG_3093.png'),
              fit: BoxFit.cover,
            ),
          ),
          height: 80.0,
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