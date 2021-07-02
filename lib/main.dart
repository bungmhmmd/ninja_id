import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.black45,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        backgroundColor: Colors.black45,
        child: Icon(
          Icons.add,
          color: Colors.grey,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/mapel.jpg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 50,
              color: Colors.lightGreen[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Bungmhmmd',
              style: TextStyle(
                color: Colors.lightGreen[800],
                letterSpacing: 2,
                fontSize: 35,
                fontWeight : FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$counter',
              style: TextStyle(
                color: Colors.lightGreen[800],
                letterSpacing: 2,
                fontSize: 35,
                fontWeight : FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.email,
                    color: Colors.grey[600],
                    size: 30,
                  ),
                ),
                SizedBox(width: 30,),
                Text(
                  'bungmohammad@gmail.com',
                  style: TextStyle(
                    color: Colors.lightGreen[800],
                    letterSpacing: 2,
                    fontSize: 16,
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


