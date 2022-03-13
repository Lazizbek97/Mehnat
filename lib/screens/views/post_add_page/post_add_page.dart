import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehnatkash/core/constants/constants.dart';
import 'package:mehnatkash/core/utils/size_config.dart';
import 'package:mehnatkash/core/widgets/email_input.dart';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class PostAddingPage extends StatefulWidget {
  const PostAddingPage({Key? key}) : super(key: key);

  @override
  State<PostAddingPage> createState() => _PostAddingPageState();
}

class _PostAddingPageState extends State<PostAddingPage> {
  final _ishNomiController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final _dataController = TextEditingController();
  final _locationController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final _formKey3 = GlobalKey<FormState>();
  final _formKey4 = GlobalKey<FormState>();
  final _formKey5 = GlobalKey<FormState>();
  final _formKey6 = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final ImagePicker _picker = ImagePicker();
  File picture = File("");
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Add your vacansies",
          style: GoogleFonts.merriweather(fontSize: Constants.appbarTitle),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: getHeight(160),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Positioned(
                      top: getHeight(50),
                      left: getWidth(150),
                      child: IconButton(
                        onPressed: () async {
                          final XFile? image = await _picker
                              .pickImage(source: ImageSource.gallery)
                              .then((value) {
                            setState(() {
                              picture = File(value!.path);
                            });
                            _storage
                                .ref("/images/${picture.path.split("/").last}")
                                .putFile(picture)
                                .then((p0) async {
                              String url = await p0.ref.getDownloadURL();
                              _firebaseFirestore
                                  .collection("Elon")
                                  .doc("${_auth.currentUser!.phoneNumber}")
                                  .update({"pictures": url});
                            });
                            return null;
                          });
                        },
                        padding: const EdgeInsets.all(0),
                        icon: const Icon(
                          Icons.add_a_photo_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Positioned(
                        top: getHeight(90),
                        left: getWidth(130),
                        child: const Text("Add your photo")),
                  ],
                ),
                Form(
                  key: _formKey1,
                  child: EmailNameInput(
                      constroller: _ishNomiController, hintText: "Ish nomi"),
                ),
                Form(
                  key: _formKey2,
                  child: EmailNameInput(
                      constroller: _descriptionController,
                      hintText: "Ish haqida..."),
                ),
                Form(
                  key: _formKey3,
                  child: EmailNameInput(
                      constroller: _dataController, hintText: "Muddat"),
                ),
                Form(
                    key: _formKey4,
                    child: EmailNameInput(
                        constroller: _priceController, hintText: "Narx")),
                Form(
                  key: _formKey5,
                  child: EmailNameInput(
                      constroller: _locationController, hintText: "Manzil"),
                ),
                Form(
                  key: _formKey6,
                  child: EmailNameInput(
                      constroller: _phoneNumberController,
                      hintText: "Telefon raqam"),
                ),
                SizedBox(
                  height: getHeight(70),
                ),
                ElevatedButton(
                  child: const Text("Saqlash"),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, getHeight(50))),
                  onPressed: () async {
                    if (_formKey1.currentState!.validate() &&
                        _formKey2.currentState!.validate() &&
                        _formKey3.currentState!.validate() &&
                        _formKey4.currentState!.validate() &&
                        _formKey5.currentState!.validate() &&
                        _formKey6.currentState!.validate()) {
                      await _firebaseFirestore
                          .collection("Elon")
                          .doc("${_auth.currentUser!.phoneNumber}")
                          .update({
                        "title": _ishNomiController.text,
                        "disc": _descriptionController.text,
                        "price": int.parse(_priceController.text),
                        "telNum": _phoneNumberController.text,
                        "date": _dataController.text
                      });

                      _ishNomiController.clear();
                      _descriptionController.clear();
                      _priceController.clear();
                      _dataController.clear();
                      _locationController.clear();
                      _phoneNumberController.clear();
                      setState(() {});
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
