import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuk/models/PaketData.dart';
import 'package:uuk/pages/paymentPage_jasta.dart';

class Daftarpaketpage extends StatelessWidget {
  const Daftarpaketpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Daftar Menu Paket',
          style: GoogleFonts.notoSans(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: semuaPaket.length,
        itemBuilder: (context, index) {
          final paket = semuaPaket[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentPage(paket: paket,)),
              );
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    paket.Nama,
                    style: GoogleFonts.notoSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    paket.Deskripsi,
                    style: GoogleFonts.notoSans(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.hourglass_bottom_rounded, color: Colors.red),
                      SizedBox(width: 4),
                      Text(
                        paket.MasaAktif,
                        style: GoogleFonts.notoSans(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        paket.Harga,
                        style: GoogleFonts.notoSans(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
