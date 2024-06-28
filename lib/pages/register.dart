import 'package:flutter/material.dart';
import 'package:flutter_siaran/themes/fonts.dart';
import 'package:flutter_siaran/widgets/custom_button.dart';
import 'package:flutter_siaran/widgets/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _kelasController = TextEditingController();
  final TextEditingController _jurusanController = TextEditingController();
  final TextEditingController _prodiController = TextEditingController();
  final TextEditingController _nohpController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confpasswordController = TextEditingController();
  bool _isVisible = true;

  void toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _namaController.dispose();
    _nimController.dispose();
    _kelasController.dispose();
    _jurusanController.dispose();
    _prodiController.dispose();
    _nohpController.dispose();
    _passwordController.dispose();
    _confpasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFF659480),
                Color(0xFF014A31),
              ]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'SIARAN',
                          style: poppinsBlack.copyWith(
                            color: Color(0xFFFFFFFF),
                            fontSize: 40,
                          ),
                        ),
                        TextSpan(
                          text: '.',
                          style: poppinsBlack.copyWith(
                            color: Color(0xFF00B074),
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: poppinsBold.copyWith(
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          'Create your account',
                          style: poppinsMedium.copyWith(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: poppinsSemiBold.copyWith(
                              fontSize: 16,
                              color: Color(0xFF659480),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                        controller: _emailController,
                        hintText: "Email",
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nama Lengkap',
                            style: poppinsSemiBold.copyWith(
                              fontSize: 16,
                              color: Color(0xFF659480),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                        controller: _namaController,
                        hintText: "Nama Lengkap",
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NIM',
                            style: poppinsSemiBold.copyWith(
                              fontSize: 16,
                              color: Color(0xFF659480),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                        controller: _nimController,
                        hintText: "NIM",
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kelas',
                            style: poppinsSemiBold.copyWith(
                              fontSize: 16,
                              color: Color(0xFF659480),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                        controller: _nimController,
                        hintText: "Kelas",
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jurusan',
                            style: poppinsSemiBold.copyWith(
                              fontSize: 16,
                              color: Color(0xFF659480),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                        controller: _kelasController,
                        hintText: "Jurusan",
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Program Studi',
                            style: poppinsSemiBold.copyWith(
                              fontSize: 16,
                              color: Color(0xFF659480),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                        controller: _kelasController,
                        hintText: "Program Studi",
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nomor HP',
                            style: poppinsSemiBold.copyWith(
                              fontSize: 16,
                              color: Color(0xFF659480),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                        controller: _nohpController,
                        hintText: "Nomor HP (cth: 6281234567890)",
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Password',
                            style: poppinsSemiBold.copyWith(
                              fontSize: 16,
                              color: Color(0xFF659480),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                        controller: _passwordController,
                        isPassword: _isVisible,
                        hintText: "Password",
                        maxLines: 1,
                        suffixIcon: GestureDetector(
                          onTap: () => toggleVisibility(),
                          child: Icon(
                            _isVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Confirm Password',
                            style: poppinsSemiBold.copyWith(
                              fontSize: 16,
                              color: Color(0xFF659480),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                        controller: _confpasswordController,
                        isPassword: _isVisible,
                        hintText: "Confirm Password",
                        maxLines: 1,
                        suffixIcon: GestureDetector(
                          onTap: () => toggleVisibility(),
                          child: Icon(
                            _isVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: CustomButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/pic-home');
                          },
                          label: 'Sign Up',
                        ),
                      ),
                      const SizedBox(height: 40),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account? ',
                              style: poppinsMedium.copyWith(
                                fontSize: 14,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              child: Text(
                                'Login',
                                style: poppinsSemiBold.copyWith(
                                  fontSize: 14,
                                  color: Color(0xFF0C2A92),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
