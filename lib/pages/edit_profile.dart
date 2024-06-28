import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_siaran/themes/fonts.dart';
import 'package:flutter_siaran/widgets/custom_button.dart';
import 'package:flutter_siaran/widgets/custom_text_field.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _kelasController = TextEditingController();
  final TextEditingController _jurusanController = TextEditingController();
  final TextEditingController _prodiController = TextEditingController();
  final TextEditingController _nohpController = TextEditingController();

  File? _profileImage;

  @override
  void dispose() {
    _emailController.dispose();
    _namaController.dispose();
    _nimController.dispose();
    _kelasController.dispose();
    _jurusanController.dispose();
    _prodiController.dispose();
    _nohpController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Stack(
            children: [
              Positioned(
                left: 0,
                top: 15,
                bottom: 0,
                child: BackButton(),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'SIARAN',
                        style: poppinsBold.copyWith(
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                        ),
                      ),
                      TextSpan(
                        text: '.',
                        style: poppinsBold.copyWith(
                          color: Color(0xFF00B074),
                          fontWeight: FontWeight.w900,
                          fontSize: 60,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Edit Profile",
                    style: poppinsBold.copyWith(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: _profileImage != null
                            ? FileImage(_profileImage!)
                            : AssetImage('assets/icons/Icon_Profile.png')
                                as ImageProvider,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        onTap: _pickImage,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey[200],
                          child: Icon(Icons.camera_alt, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Email',
                      style: poppinsSemiBold.copyWith(
                        color: Color(0xFF659480),
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: ' *',
                      style: poppinsSemiBold.copyWith(
                        color: Color(0xFFFF0000),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                controller: _emailController,
                hintText: "Email",
                maxLines: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Nama Lengkap',
                      style: poppinsSemiBold.copyWith(
                        color: Color(0xFF659480),
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: ' *',
                      style: poppinsSemiBold.copyWith(
                        color: Color(0xFFFF0000),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                controller: _namaController,
                hintText: "Nama Lengkap",
                maxLines: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'NIM',
                      style: poppinsSemiBold.copyWith(
                        color: Color(0xFF659480),
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: ' *',
                      style: poppinsSemiBold.copyWith(
                        color: Color(0xFFFF0000),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                controller: _nimController,
                hintText: "NIM",
                maxLines: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Kelas',
                      style: poppinsSemiBold.copyWith(
                        color: Color(0xFF659480),
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: ' *',
                      style: poppinsSemiBold.copyWith(
                        color: Color(0xFFFF0000),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                controller: _nimController,
                hintText: "Kelas",
                maxLines: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Jurusan',
                      style: poppinsSemiBold.copyWith(
                        color: Color(0xFF659480),
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: ' *',
                      style: poppinsSemiBold.copyWith(
                        color: Color(0xFFFF0000),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                controller: _kelasController,
                hintText: "Jurusan",
                maxLines: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Program Studi',
                      style: poppinsSemiBold.copyWith(
                        color: Color(0xFF659480),
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: ' *',
                      style: poppinsSemiBold.copyWith(
                        color: Color(0xFFFF0000),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                controller: _kelasController,
                hintText: "Program Studi",
                maxLines: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Nomor HP',
                      style: poppinsSemiBold.copyWith(
                        color: Color(0xFF659480),
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: ' *',
                      style: poppinsSemiBold.copyWith(
                        color: Color(0xFFFF0000),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                controller: _nohpController,
                hintText: "Nomor HP (cth: 6281234567890)",
                maxLines: 1,
              ),
              const SizedBox(
                height: 40,
              ),
              SaveButton(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        label: 'Save',
      ),
    );
  }
}
