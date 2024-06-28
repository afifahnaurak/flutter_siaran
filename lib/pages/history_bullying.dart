import 'package:flutter/material.dart';
import 'package:flutter_siaran/themes/fonts.dart';
import 'package:flutter_siaran/widgets/custom_text_field.dart';

class HistoryBullyingPage extends StatefulWidget {
  const HistoryBullyingPage({Key? key});

  @override
  State<HistoryBullyingPage> createState() => _HistoryBullyingPageState();
}

class _HistoryBullyingPageState extends State<HistoryBullyingPage> {
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
                    "Pelaporan Bullying",
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
              Text(
                'Status',
                style: poppinsSemiBold.copyWith(
                  fontSize: 16,
                  color: Color(0xFF659480),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                decoration: BoxDecoration(
                  color: Color(0xFFFF8C06),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'Diproses',
                  style: poppinsMedium.copyWith(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
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
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                controller: _lokasiController,
                hintText: "Lokasi",
                maxLines: 1,
                isDisabled: true,
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
                isReadOnly: true,
                isDisabled: true,
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
                isDisabled: true,
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
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/Foto.png',
                    ),
                  ],
                ),
              ),
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