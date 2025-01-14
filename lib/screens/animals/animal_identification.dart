

import 'dart:io';

import 'package:animalide/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_image_labeling/google_mlkit_image_labeling.dart';
import 'package:image_picker/image_picker.dart';

class AnimalIdentification extends StatefulWidget {
  const AnimalIdentification({super.key});



  @override
  State<AnimalIdentification> createState() => _AnimalIdentificationState();
}

class _AnimalIdentificationState extends State<AnimalIdentification> {
  File? image;
  late ImagePicker imagePicker;
  late ImageLabeler labeler;

  @override
  void initState() {
    super.initState();
    imagePicker = ImagePicker();

    ImageLabelerOptions options =
        ImageLabelerOptions(confidenceThreshold: 0.75);
    labeler = ImageLabeler(options: options);
  }

  chooseImage() async {
    XFile? selectedImage =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (selectedImage != null) {
      setState(() {
        image = File(selectedImage.path);
        performImageClassification();
      });
    }
  }

  captureImage() async {
    XFile? selectedImage =
        await imagePicker.pickImage(source: ImageSource.camera);
    if (selectedImage != null) {
      setState(() {
        image = File(selectedImage.path);
        performImageClassification();
      });
    }
  }

  String? result;
  performImageClassification() async {
    InputImage inputImage = InputImage.fromFile(image!);

    final List<ImageLabel> labels = await labeler.processImage(inputImage);

    for (ImageLabel label in labels) {
      final String text = label.label;
      final double confidence = label.confidence;
      result = "$text : ${confidence.toStringAsFixed(2)}\n";
    }

    setState(() {
      result = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF23D498),
        title: Center(child: Text("Animal Identification", style: TextStyle(color: Colors.white),)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.white, spreadRadius: 3),
                ],
              ),
              child: image == null
                  ? Icon(Icons.image_outlined, size: 400)
                  : Image.file(image!),
            ),

                SizedBox(height: 20,),
                MyButton(onTap: captureImage, text: "Capture a picture"),
                SizedBox(height: 20,),
                MyButton(onTap: chooseImage, text: "Choose a picture"),
                SizedBox(height: 20,),
                result == null ? Text(" ") : Text("Result: $result", style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
