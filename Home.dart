import 'package:agricure_pro_app/Gallery.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              // Add functionality for back button
            },
          ),
          centerTitle: true,
          title: Text(
            'Agricure Pro',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {
                // Add your notifications functionality here
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                // Add your search functionality here
              },
            ),
          ],
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Add your functionality for "Inspect Crop" button here
              _showOptions(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            ),
            child: Text(
              'Inspect Crop',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.camera),
                title: Text('Camera'),
                onTap: () {
                  // Add your functionality for camera option here
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => GalleryScreen())
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Gallery'),
                onTap: () {
                  // Add your functionality for gallery option here
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
