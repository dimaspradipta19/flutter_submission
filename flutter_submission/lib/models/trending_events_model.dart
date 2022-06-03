class TrendingEvent {
  String nama;
  String tanggalEvent;
  String deskripsiEvent;
  String hargaTiket;
  String lokasiEvent;
  String gambarEvent;

  TrendingEvent(
      {required this.nama,
      required this.tanggalEvent,
      required this.deskripsiEvent,
      required this.hargaTiket,
      required this.lokasiEvent,
      required this.gambarEvent});
}

var trendingEventList = [
  TrendingEvent(
      nama: "Adobe Bootcamp",
      tanggalEvent: "1 Januari 2022",
      deskripsiEvent:
          "Adobe Bootcampt for Beginners and Intermediate level. This is a one day event. We will have a lot of fun and learn Adobe XD and Adobe Photoshop.",
      hargaTiket: "Start From Rp.4.000.000",
      lokasiEvent:
          "Istora Senayan Jakarta. Jl. Letjen S. Parman Kav. 1-3, RT.1/RW.1, Kebayoran Baru, Kebayoran Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12220",
      gambarEvent: "assets/images/event6.jpeg"),
  TrendingEvent(
      nama: "Edu Gears",
      tanggalEvent: "27 Agustus 2023",
      deskripsiEvent:
          "Edu-Gears merupakan sebuah pameran yang diselenggarakan oleh Prodi MICE yang bekerja sama dengan Kementrian Pendidikan dan kebudayaan Republik Indonesia",
      hargaTiket: "Start From Rp.50.000",
      lokasiEvent:
          "Istora Senayan Jakarta. Jl. Letjen S. Parman Kav. 1-3, RT.1/RW.1, Kebayoran Baru, Kebayoran Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12220",
      gambarEvent: "assets/images/event5.jpeg"),
  TrendingEvent(
      nama: "Party Pagi",
      tanggalEvent: "19 Desember 2022",
      deskripsiEvent:
          "Party Pagi adalah acara musik yang akan diadakan pada tanggal 19 Desember 2022",
      hargaTiket: "Start From Rp.150.000",
      lokasiEvent: "Stadion Madya Gelora Bung Karno",
      gambarEvent: "assets/images/event2.jpg"),
  TrendingEvent(
      nama: "INAMICE",
      tanggalEvent: "9 Juli 2022",
      deskripsiEvent:
          "INAMICE adalah acara convention terbesar diIndonesia, diadakan pada tanggal 9 Juli 2022",
      hargaTiket: "Free Entry",
      lokasiEvent: "Jakarta Convention Center",
      gambarEvent: "assets/images/event3.jpg"),
];
