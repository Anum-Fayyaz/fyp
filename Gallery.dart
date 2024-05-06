import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(GalleryScreen());
}

class GalleryScreen extends StatefulWidget {
  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  File? _image; 

  Future<void> imgFromGallery() async {
    final picker = ImagePicker();
    final XFile? res = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (res != null) {
        _image = File(res.path);
      } else {
        print("No Image Selected");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gallery'),
        ),
        body: Center(
          child: _image == null ? Text('No image Selected') : Image.file(_image!),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            imgFromGallery();
          },
          child: Icon(Icons.photo),
        ),
      ),
    );
  }
}
