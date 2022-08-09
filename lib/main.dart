import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deal with the null safety',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff55879F),
        leading: Icon(Icons.menu),
        title: Text(
          "Telegram",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(),
              child: Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
      body: Column(
        children: [
          NewWidget(url: 'assets/satu.jpg', name: "Jeff Bezos", time: "05:00 PM", desc: "Hi Andra,how are you?", msg: "2"),
          Divider(
            height: 0.2,
          ),

          NewWidget(url: 'assets/dua.jpg', name: "Mark Zuckerberg", time: "07:00 PM", desc: "yes sir", msg: "1"),
          Divider(
            height: 0.2,
          ),

          NewWidget(url: 'assets/tiga.jpg', name: "Michael Hartono", time: "04:00 PM", desc: "iya nanti saya atur lagi ya pak", msg: "1"),
          Divider(
            height: 0.2,
          ),

          NewWidget(url: 'assets/empat.png', name: "Bambang Hartono", time: "10:00 AM", desc: "siap pak", msg: "1"),
          Divider(
            height: 0.2,
          ),

          NewWidget(url: 'assets/lima.jpeg', name: "Bill Gates", time: "02:00 PM", desc: "baik pak", msg: "1"),
          Divider(
            height: 0.2,
          ),

          NewWidget(url: 'assets/enam.png', name: "Thomas Shelby", time: "09:00 PM ", desc: "semua akan berjalan aman pak", msg: "1"),
          Divider(
            height: 0.2,
          ),

          NewWidget(url: 'assets/tujuh.png', name: "Jeff Bezos", time: "05:00 PM", desc: "menunggu perintah bapak", msg: "1"),
          Divider(
            height: 0.2,
          ),
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.url,
    required this.name,
    required this.time,
    required this.desc,
    required this.msg,
  }) : super(key: key);

  final String url;
  final String name;
  final String time;
  final String desc;
  final String msg;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 5, left: 10),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: ExactAssetImage(url),
      ),
      title: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            Text(
              time,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 14),
            ),
          ],
        ),
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              desc,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Container(
              child: Text(
                msg,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
