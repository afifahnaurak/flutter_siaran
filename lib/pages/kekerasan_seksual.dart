import 'package:flutter/material.dart';
import 'package:flutter_siaran/themes/fonts.dart';
import 'package:flutter_siaran/widgets/custom_button.dart';
import 'package:flutter_siaran/widgets/custom_text_field.dart';

class KekerasanSeksualPage extends StatefulWidget {
  const KekerasanSeksualPage({Key? key});

  @override
  State<KekerasanSeksualPage> createState() => _KekerasanSeksualPageState();
}

class _KekerasanSeksualPageState extends State<KekerasanSeksualPage> {
  final TextEditingController _lokasiController = TextEditingController();
  final TextEditingController _tanggalController = TextEditingController();
  final TextEditingController _aduanController = TextEditingController();
  final TextEditingController _fileController = TextEditingController();

  @override
  void dispose() {
    _lokasiController.dispose();
    _tanggalController.dispose();
    _aduanController.dispose();
    _fileController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _tanggalController.text = "${picked.toLocal()}".split(' ')[0];
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
                    "Pelaporan Kekerasan Seksual",
                    style: poppinsSemiBold.copyWith(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Lokasi',
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
              CustomTextField(
                controller: _lokasiController,
                hintText: "Lokasi",
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
                      text: 'Tanggal',
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
                controller: _tanggalController,
                hintText: "Tanggal",
                suffixIcon: const Icon(
                  Icons.date_range,
                  color: Colors.grey,
                ),
                isReadOnly: true,
                onTap: () => _selectDate(context),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Laporan',
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
                controller: _aduanController,
                hintText: "Laporan",
                maxLines: 5,
                maxLength: 255,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Dokumentasi',
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
              UploadButton(),
              SubmitButton(),
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

class UploadButton extends StatelessWidget {
  const UploadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        isOutline: true,
        label: 'Unggah File',
        sideColor: Color(0xFF659480),
        textColor: Color(0xFF659480),
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        label: 'Submit',
      ),
    );
  }
}
