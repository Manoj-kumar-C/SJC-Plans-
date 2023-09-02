import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Popup Dialog Example',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  Future<void> _showPopupDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Popup Dialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a sample popup dialog message.'),
                Text('You can customize it as per your needs.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Dialog Example'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  _showPopupDialog(context);
                },
                child: Image.asset(
                    '../images/image1.jpg'), // Replace with your image path
              ),
              SizedBox(height: 50.0),
              GestureDetector(
                onTap: () {
                  _showPopupDialog(context);
                },
                child: Image.asset(
                    '../images/image2.jpg'), // Replace with your image path
              ),
            ],
          ),
        ),
      ),
    );
  }
}
