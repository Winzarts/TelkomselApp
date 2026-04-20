import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuk/models/PaketData.dart';

class PaymentPage extends StatefulWidget {
  final PaketKuota paket;
  const PaymentPage({super.key, required this.paket});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int _MetodeYangDipilih = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Metode Pembayaran',
          style: GoogleFonts.notoSans(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
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
                    widget.paket.Nama,
                    style: GoogleFonts.notoSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    widget.paket.Deskripsi,
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
                        widget.paket.MasaAktif,
                        style: GoogleFonts.notoSans(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    'Pembayaran di MyTelkomsel',
                    style: GoogleFonts.notoSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.credit_card_outlined),
              title: Text(
                'Pulsa',
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                'Rp34.000',
                style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
              trailing: Radio(
                value: 1,
                groupValue: _MetodeYangDipilih,
                onChanged: (value) {
                  setState(() {
                    _MetodeYangDipilih = value!;
                  });
                },
              ),
            ),
            ListTile(
              leading: Image.asset('assets/Images/Logo LinkAja.png'),
              title: Text(
                'Link Aja',
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                'Rp71.000',
                style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
              trailing: Radio(
                value: 2,
                groupValue: _MetodeYangDipilih,
                onChanged: (value) {
                  setState(() {
                    _MetodeYangDipilih = value!;
                  });
                },
              ),
            ),
            Divider(thickness: 2, color: Colors.grey[300]),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 12,
                  ),
                  child: Text(
                    'E-Wallet',
                    style: GoogleFonts.notoSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Image.asset('assets/Images/Logo GoPay.png'),
              title: Text(
                'Gopay',
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              trailing: Radio(
                value: 3,
                groupValue: _MetodeYangDipilih,
                onChanged: (value) {
                  setState(() {
                    _MetodeYangDipilih = value!;
                  });
                },
              ),
            ),
            ListTile(
              leading: Image.asset('assets/Images/Logo OVO.png'),
              title: Text(
                'OVO',
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              trailing: Radio(
                value: 4,
                groupValue: _MetodeYangDipilih,
                onChanged: (value) {
                  setState(() {
                    _MetodeYangDipilih = value!;
                  });
                },
              ),
            ),
            ListTile(
              leading: Image.asset('assets/Images/Dana-logo-500x333.png'),
              title: Text(
                'Dana',
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              trailing: Radio(
                value: 5,
                groupValue: _MetodeYangDipilih,
                onChanged: (value) {
                  setState(() {
                    _MetodeYangDipilih = value!;
                  });
                },
              ),
            ),
            ListTile(
              leading: Image.asset('assets/Images/Logo LinkAja.png'),
              title: Text(
                'Link Aja',
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              trailing: Radio(
                value: 6,
                groupValue: _MetodeYangDipilih,
                onChanged: (value) {
                  setState(() {
                    _MetodeYangDipilih = value!;
                  });
                },
              ),
            ),
            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Pembayaran',
                  style: GoogleFonts.notoSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  widget.paket.Harga,
                  style: GoogleFonts.notoSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text(
                'KONFIRMASI DAN BAYAR',
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
