import 'package:flutter/material.dart';
import 'package:flutter_siaran/themes/fonts.dart';
import 'package:flutter_siaran/widgets/custom_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Profil Saya",
                style: poppinsBold.copyWith(
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: Image.asset(
                            'assets/icons/Icon_Profile.png',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nama Mahasiswa",
                                style: poppinsBold.copyWith(
                                  color: Color(0xFF333333),
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "NIM - Kelas - Jurusan",
                                style: poppinsRegular.copyWith(
                                  color: Color(0xFF333333),
                                  fontSize: 12,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              EditProfileButton(),
              ChangePasswordButton(),
              LogoutButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        onPressed: () {
          Navigator.pushNamed(context, '/edit-profile');
        },
        label: 'Edit Profile',
      ),
    );
  }
}

class ChangePasswordButton extends StatelessWidget {
  const ChangePasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        onPressed: () {
          Navigator.pushNamed(context, '/change-password');
        },
        label: 'Change Password',
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        },
        isOutline: true,
        label: 'Logout',
      ),
    );
  }
}
