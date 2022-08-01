import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expanded Row Sample'),
          backgroundColor: Colors.red,
          centerTitle: true,
          elevation: 100.0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(40.0, 30.0, 10.0, 20.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/song.png'),
                radius: 25.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.amberAccent,
            ),
            SizedBox(height: 20.0),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 50.0),
            Text('Prenom',
                style: TextStyle(
                  color: Colors.redAccent,
                  letterSpacing: 4.0,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 50.0),
            Row(children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10.0),
              Text(
                'rahmabalti02@gmail.com',
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ]),
          ]),
        )
        /* body: Center(
        children:[

             Expanded(
              flex: 3,
              child: Container(
                child: Text("rahma"),
                color: Colors.blueAccent,
                height: 100,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Text("data"),
                color: Colors.amber,
                height: 100,
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.asset('assets/song.png'),
            ),
          ],
        ),
      ),
    */
        );
  }
}
