import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuk/widgets/bottomNavBar.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
} 

class _registerPageState extends State<registerPage> {
  bool _isChecked = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nomorController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 55),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                alignment: Alignment.centerLeft,
                child: Image.asset('assets/Images/agus.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Silahkan Masuk dengan Nomor \nTelkomsel anda',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.notoSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Nomor HP',
                      style: GoogleFonts.notoSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            controller: _nomorController,
                            decoration: InputDecoration(
                              hintText: '081234567891',
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Nomor Tidak Boleh Kosong';
                              } else if (!RegExp(
                                r'^08[0-9]{8,11}',
                              ).hasMatch(value)) {
                                return 'Nomor yang anda masukkan harus valid';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        activeColor: Colors.red[700],
                      ),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            text: 'Saya Menyetujui',
                            children: [
                              TextSpan(
                                text: ' Syarat, Ketentuan',
                                style: GoogleFonts.notoSans(
                                  color: Colors.red[700],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(text: ' dan'),
                              TextSpan(
                                text: ' Privasi',
                                style: GoogleFonts.notoSans(
                                  color: Colors.red[700],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(text: ' Telkomsel'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            if (_isChecked) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => BottomNavBar(
                                        nomorHP: _nomorController.text,
                                      ),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Anda harus menyetujui syarat dan ketentuan terlebih dahulu.',
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          }
                        },
                        child: Text(
                          'Masuk',
                          style: GoogleFonts.notoSans(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Atau masuk Menggunakan',
                    style: GoogleFonts.notoSans(
                      color: Colors.blueGrey,
                      fontSize: 12,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: SizedBox(
                            height: 40,
                            width: 150,
                            child: OutlinedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.facebook, color: Colors.blue),
                              label: Text(
                                'Facebook',
                                style: GoogleFonts.notoSans(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.blue),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 18),
                        SizedBox(
                          height: 40,
                          width: 150,
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/Icons/X light.svg',
                              width: 14,
                              height: 14,
                            ),
                            label: Text(
                              'X',
                              style: GoogleFonts.notoSans(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.black),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
