class PaketKuota {
  final String Nama;
  final String Deskripsi;
  final String Harga;
  final String MasaAktif;

  PaketKuota({
    required this.Nama,
    required this.Deskripsi,
    required this.Harga,
    required this.MasaAktif,
  });
}

List<PaketKuota> semuaPaket = [
  PaketKuota(
    Nama: 'Combo OMG! 6,5GB',
    Deskripsi:'4,5 GB Internet + 2 GB OMG! + 60 SMS Tsel\n+ 100 Mins Voice Tsel',
    Harga: 'RP61.000',
    MasaAktif: '30 Hari',
  ),
  PaketKuota(
    Nama: 'Combo OMG! 10GB',
    Deskripsi: '6 GB Internet + 4 GB OMG! + 90 SMS Tsel\n+ 120 Mins Voice Tsel',
    Harga: 'RP86.000',
    MasaAktif: '30 Hari',
  ),
  PaketKuota(
    Nama: 'Internet Malam 12GB',
    Deskripsi: '12 GB Kuota Malam',
    Harga: 'RP72.000',
    MasaAktif: '30 Hari (20.00 - 03.00)',
  ),
  PaketKuota(
    Nama: 'Sosik Sosmed Asik',
    Deskripsi: '2 GB Kuota Sosmed',
    Harga: 'RP29.000',
    MasaAktif: '7 Hari',
  ),
  PaketKuota(
    Nama: 'Super Kaget',
    Deskripsi: '7 GB Kuota Internet + 30 SMS Tsel\n+ 60 Mins Voice Tsel',
    Harga: 'RP41.000',
    MasaAktif: '30 Hari'
  ),
  PaketKuota(
    Nama: 'Asik Mabar',
    Deskripsi: '5 GB Kuota Game',
    Harga: 'RP27.000',
    MasaAktif: '24 Hari'
  ),
  PaketKuota(
    Nama: 'Asik Mabar!',
    Deskripsi: '8 GB Kuota Game',
    Harga: 'RP34.000',
    MasaAktif: '24 Hari'
  ),
  PaketKuota(
    Nama: 'Asik Mabar!!',
    Deskripsi: '15 GB kuota Game',
    Harga: 'RP51.000',
    MasaAktif: '30 Hari'
  ),
  PaketKuota(
    Nama: 'Combo Asik 12 GB',
    Deskripsi: '8 GB Kuota Internet + 2 GB Kuota Sosmed\n+ 2 GB Kuota Game',
    Harga: 'RP81.000',
    MasaAktif: '60 Hari'
  )
];
