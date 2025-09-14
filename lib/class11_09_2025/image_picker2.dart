import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class imagePickerExample2 extends StatefulWidget {
  const imagePickerExample2({super.key});

  @override
  State<imagePickerExample2> createState() => _imagePickerExample2State();
}

class _imagePickerExample2State extends State<imagePickerExample2> {
  File? image;
  final ImagePicker picker = ImagePicker();
  Future<void> pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null){
       setState(() {
         image = File(pickedFile.path);
       });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Image Picker Example'))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  image == null
                      ? Center(child: Text('No Image Selected'))
                      : ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.file(image!, fit: BoxFit.cover),
                      ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: pickImage, child: Text('Pick Image')),
        ],
      ),
    );
  }
}
