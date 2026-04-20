import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uuk/pages/DaftarPaketPage.dart';
import 'package:uuk/widgets/custom_clipperPathAppbar.dart';
import 'package:google_fonts/google_fonts.dart';

class homePage extends StatefulWidget {
  final String nomorHP;
  const homePage({super.key, required this.nomorHP});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipPath(
                  clipper: SemiCircleClipper(),
                  child: Container(
                    height: 250,
                    color: Colors.red[600],
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 25,
                    horizontal: 12,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Hai, ',
                        style: GoogleFonts.notoSans(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Muhammad',
                        style: GoogleFonts.notoSans(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/Icons/ic_round-qrcode.svg',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 80,
                    horizontal: 20,
                  ),
                  child: ClipPath(
                    clipper: SimCardClipper(),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.red.shade500, Colors.red.shade900],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 85,
                        horizontal: 30,
                      ),
                      child: Text(
                        '${widget.nomorHP}',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 73,
                        horizontal: 25,
                      ),
                      child: Text(
                        'simPATI',
                        style: GoogleFonts.montserrat(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 130,
                  left: 30,
                  child: Text(
                    'Sisa Pulsa Anda',
                    style: GoogleFonts.notoSans(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 30,
                  child: Text(
                    'Rp.34.000',
                    style: GoogleFonts.notoSans(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      wordSpacing: 2,
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  right: 34,
                  child: Container(
                    height: 40,
                    width: 110,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Isi Pulsa',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 210,
                  right: 20,
                  left: 20,
                  child: Container(
                    height: 2,
                    width: 300,
                    color: Colors.red[700],
                  ),
                ),
                Positioned(
                  top: 220,
                  left: 30,
                  child: Row(
                    children: [
                      Text(
                        'Berlaku Sampai ',
                        style: GoogleFonts.notoSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '19 April 2020',
                        style: GoogleFonts.notoSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 245,
                  left: 30,
                  child: Row(
                    children: [
                      Text(
                        'Telkomsel POIN',
                        style: GoogleFonts.notoSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 4),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          backgroundColor: Colors.amber,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 2,
                          ),
                          minimumSize: Size(0, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          '326',
                          style: GoogleFonts.notoSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -10,
                  left: 16,
                  right: 16,
                  child: Row(
                    children: [
                      Flexible(
                        child: _buildInfoKartu('Internet', '12.19', 'GB'),
                      ),
                      SizedBox(width: 5),
                      Expanded(child: _buildInfoKartu('Telepon', '0', 'Min')),
                      SizedBox(width: 5),
                      Expanded(child: _buildInfoKartu('SMS', '23', 'SMS')),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 30, bottom: 8),
              child: Container(height: 2, width: 500, color: Colors.grey[600]),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 15),
                      child: Text(
                        'Kategori Paket',
                        style: GoogleFonts.notoSans(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  child: GridView.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Daftarpaketpage(),
                                ),
                              );
                            },
                            icon: SvgPicture.asset('assets/Icons/Internet.svg'),
                          ),
                          const SizedBox(height: 9),
                          Text(
                            'Internet',
                            style: GoogleFonts.notoSans(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/Icons/telepon.svg'),
                          ),
                          const SizedBox(height: 9),
                          Text(
                            'Telepon',
                            style: GoogleFonts.notoSans(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/Icons/sms.svg'),
                          ),
                          const SizedBox(height: 9),
                          Text(
                            'SMS',
                            style: GoogleFonts.notoSans(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/Icons/roaming.svg'),
                          ),
                          const SizedBox(height: 9),
                          Text(
                            'Roaming',
                            style: GoogleFonts.notoSans(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/Icons/hiburan.svg'),
                          ),
                          const SizedBox(height: 9),
                          Text(
                            'Hiburan',
                            style: GoogleFonts.notoSans(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/Icons/unggulan.svg'),
                          ),
                          const SizedBox(height: 9),
                          Text(
                            'Unggulan',
                            style: GoogleFonts.notoSans(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/Icons/tersimpan.svg',
                            ),
                          ),
                          const SizedBox(height: 9),
                          Text(
                            'Tersimpan',
                            style: GoogleFonts.notoSans(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/Icons/riwayat.svg'),
                          ),
                          const SizedBox(height: 9),
                          Text(
                            'Riwayat',
                            style: GoogleFonts.notoSans(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Terbaru dari Telkomsel',
                    style: GoogleFonts.notoSans(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lihat Semua',
                      style: GoogleFonts.notoSans(
                        color: Colors.red,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 260,
                      height: 100,
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.orange.shade600,
                            Colors.pink.shade600,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/Images/image 1.png',
                            height: 80,
                            width: 70,
                          ),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 4),
                              Text(
                                'Internet OMG!',
                                style: GoogleFonts.notoSans(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Bisa Youtube dan\nSosmed',
                                style: GoogleFonts.notoSans(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 260,
                      height: 100,
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.purple.shade600,
                            Colors.indigo.shade600,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/Images/image 2.png',
                            height: 80,
                            width: 70,
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Undian \nKetengan',
                                style: GoogleFonts.notoSans(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Bisa Beli Kuota Ketengan',
                                style: GoogleFonts.notoSans(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildInfoKartu(String judul, String jumlah, String satuan) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.30),
          spreadRadius: 2,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      children: [
        Text(
          judul,
          style: GoogleFonts.notoSans(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 6),
        Row(
          children: [
            Text(
              jumlah,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            Spacer(),
            Text(satuan, style: TextStyle(color: Colors.grey[600])),
          ],
        ),
      ],
    ),
  );
}
