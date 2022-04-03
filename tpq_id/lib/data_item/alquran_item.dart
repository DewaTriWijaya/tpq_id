class AlquranData {
  String surah;
  String arab;
  int number;
  int ayat;
  String artinya;
  String tempat;
  String description;
  String audio;

  AlquranData({
    required this.surah,
    required this.arab,
    required this.number,
    required this.ayat,
    required this.artinya,
    required this.tempat,
    required this.description,
    required this.audio,
  });
}

var alquranList = [
  AlquranData(
    surah: "Al-Fatihah",
    arab: "الفاتحة",
    number: 1,
    ayat: 7,
    artinya: "Pembukaan",
    tempat: "Makkiyah",
    audio: "https://ia802609.us.archive.org/13/items/quraninindonesia/001AlFaatihah.mp3",
    description:
        "Surat Al Faatihah (Pembukaan) yang diturunkan di Mekah dan terdiri dari 7 ayat adalah surat yang pertama-tama diturunkan dengan lengkap  diantara surat-surat yang ada dalam Al Quran dan termasuk golongan surat Makkiyyah. Surat ini disebut Al Faatihah (Pembukaan), karena dengan surat inilah dibuka dan dimulainya Al Quran. Dinamakan Ummul Quran (induk Al Quran) atau Ummul Kitaab (induk Al Kitaab) karena dia merupakan induk dari semua isi Al Quran, dan karena itu diwajibkan membacanya pada tiap-tiap sembahyang. Dinamakan pula As Sab'ul matsaany (tujuh yang berulang-ulang) karena ayatnya tujuh dan dibaca berulang-ulang dalam sholat.",
  ),
  AlquranData(
    surah: "Al-Baqarah",
    arab: "البقرة",
    number: 2,
    ayat: 286,
    artinya: "Sapi",
    tempat: "Madaniyah",
    audio: "https://ia802609.us.archive.org/13/items/quraninindonesia/002AlBaqarah.mp3",
    description:
        "Surat Al Baqarah yang 286 ayat itu turun di Madinah yang sebahagian besar diturunkan pada permulaan tahun Hijrah, kecuali ayat 281 diturunkan di Mina pada Hajji wadaa' (hajji Nabi Muhammad s.a.w. yang terakhir). Seluruh ayat dari surat Al Baqarah termasuk golongan Madaniyyah, merupakan surat yang terpanjang di antara surat-surat Al Quran yang di dalamnya terdapat pula ayat yang terpancang (ayat 282). Surat ini dinamai Al Baqarah karena di dalamnya disebutkan kisah penyembelihan sapi betina yang diperintahkan Allah kepada Bani Israil (ayat 67 sampai dengan 74), dimana dijelaskan watak orang Yahudi pada umumnya. Dinamai Fusthaatul-Quran (puncak Al Quran) karena memuat beberapa hukum yang tidak disebutkan dalam surat yang lain. Dinamai juga surat  alif-laam-miim karena surat ini dimulai dengan Alif-laam-miim.",
  ),
  AlquranData(
      surah: "Ali 'Imran",
      arab: "آل عمران",
      number: 3,
      ayat: 200,
      artinya: "Keluarga Imran",
      tempat: "Madaniyah",
      audio: "https://ia802609.us.archive.org/13/items/quraninindonesia/003AliImran.mp3",
      description:
          "Surat Ali 'Imran yang terdiri dari 200 ayat ini adalah surat Madaniyyah.  Dinamakan Ali 'Imran karena memuat kisah keluarga 'Imran yang di dalam kisah itu disebutkan kelahiran Nabi Isa a.s., persamaan kejadiannya dengan Nabi Adam a. s., kenabian dan beberapa mukjizatnya, serta disebut pula kelahiran Maryam puteri 'Imran, ibu dari Nabi Isa a.s. Surat Al Baqarah dan Ali 'Imran ini dinamakan Az Zahrawaani (dua yang cemerlang), karena kedua surat ini menyingkapkan hal-hal yang disembunyikan oleh para Ahli Kitab, seperti kejadian dan kelahiran Nabi Isa a.s., kedatangan Nabi Muhammad s.a.w. dan sebagainya."),
  AlquranData(
      surah: "An-Nisa'",
      arab: "النساء",
      number: 4,
      ayat: 176,
      artinya: "Wanita",
      tempat: "Madaniyah",
      audio: "https://ia802609.us.archive.org/13/items/quraninindonesia/004AnNisaa.mp3",
      description:
          "Surat An Nisaa' yang terdiri dari 176 ayat itu, adalah surat Madaniyyah yang terpanjang sesudah surat Al Baqarah. Dinamakan An Nisaa' karena dalam surat ini banyak dibicarakan hal-hal yang berhubungan dengan wanita serta merupakan surat yang paling membicarakan hal itu dibanding dengan surat-surat yang lain. Surat yang lain banyak juga yang membicarakan tentang hal wanita ialah surat Ath Thalaq. Dalam hubungan ini biasa disebut surat An Nisaa' dengan sebutan: Surat An Nisaa' Al Kubraa (surat An Nisaa' yang besar), sedang  surat Ath Thalaq disebut dengan sebutan: Surat An Nisaa' Ash Shughraa (surat An Nisaa' yang kecil)."),
  AlquranData(
      surah: "Al-Ma'idah",
      arab: "المائدة",
      number: 5,
      ayat: 120,
      artinya: "Hidangan",
      tempat: "Madaniyah",
      audio: "https://ia802609.us.archive.org/13/items/quraninindonesia/005AlMaaidah.mp3",
      description:
          "Surat Al Maa'idah terdiri dari 120 ayat; termasuk golongan surat Madaniyyah. Sekalipun ada ayatnya yang turun di Mekah, namun ayat ini diturunkan sesudah Nabi Muhammad s.a.w. hijrah ke Medinah, yaitu di waktu haji wadaa'. Surat ini dinamakan Al Maa'idah (hidangan) karena memuat kisah pengikut-pengikut setia Nabi Isa a.s. meminta kepada Nabi Isa a.s. agar Allah menurunkan untuk mereka Al Maa'idah (hidangan makanan) dari langit (ayat 112). Dan dinamakan Al Uqud (perjanjian), karena kata itu terdapat pada ayat pertama surat ini, dimana Allah menyuruh agar hamba-hamba-Nya memenuhi janji prasetia terhadap Allah dan perjanjian-perjanjian yang mereka buat sesamanya. Dinamakan juga Al Munqidz (yang menyelamatkan), karena akhir surat ini mengandung kisah tentang Nabi Isa a.s. penyelamat pengikut-pengikut setianya dari azab Allah."),
  AlquranData(
      surah: "Al-An'am",
      arab: "الأنعام",
      number: 6,
      ayat: 165,
      artinya: "Binatang Ternak",
      tempat: "Makkiyah",
      audio: "https://ia802609.us.archive.org/13/items/quraninindonesia/006AlAnaam.mp3",
      description:
          "Surat Al An'aam (binatang ternak: unta, sapi, biri-biri dan kambing) yang terdiri atas 165 ayat, termasuk golongan surat Makkiyah, karena hampur seluruh ayat-ayat-Nya diturunkan di Mekah dekat sebelum hijrah. Dinamakan Al An'aam karena di dalamnya disebut kata An'aam dalam hubungan dengan adat-istiadat kaum musyrikin, yang menurut mereka binatang-binatang ternak itu dapat dipergunakan untuk mendekatkan diri kepada tuhan mereka. Juga dalam surat ini disebutkan hukum-hukum yang berkenaan dengan binatang ternak itu."),
  AlquranData(
      surah: "Al-A'raf",
      arab: "الأعراف",
      number: 7,
      ayat: 206,
      artinya: "Tempat Tertinggi",
      tempat: "Makkiyah",
      audio: "https://ia802609.us.archive.org/13/items/quraninindonesia/007AlAaraaf.mp3",
      description: "Surat Al A'raaf yang berjumlah 206 ayat termasuk golongan surat Makkiyah, diturunkan sebelum turunnya surat Al An'aam dan termasuk golongan surat Assab 'uththiwaal (tujuh surat yang panjang). Dinamakan Al A'raaf karena perkataan Al A'raaf terdapat dalam ayat 46 yang mengemukakan tentang keadaan orang-orang yang berada di atas Al A'raaf yaitu: tempat yang tertinggi di batas surga dan neraka."),
  AlquranData(
      surah: "Al-Anfal",
      arab: "الأنفال",
      number: 8,
      ayat: 75,
      artinya: "Rampasan Perang",
      tempat: "Madaniyah",
      audio: "https://ia802609.us.archive.org/13/items/quraninindonesia/008AlAnfaal.mp3",
      description: "Surat Al Anfaal terdiri atas 75 ayat dan termasuk golongan surat-surat Madaniyyah, karena seluruh ayat-ayatnya diturunkan di Madinah. Surat ini dinamakan Al Anfaal yang berarti harta rampasan perang berhubung kata Al Anfaal terdapat pada permulaan surat ini dan juga persoalan yang menonjol dalam surat ini ialah tentang harta rampasan perang, hukum perang dan hal-hal yang berhubungan dengan peperangan pada umumnya. Menurut riwayat Ibnu Abbas r.a. surat ini diturunkan berkenaan dengan perang Badar Kubra yang terjadi pada tahun kedua hijrah. Peperangan ini sangat penting artinya, karena dialah yang menentukan jalan sejarah Perkembangan Islam. Pada waktu itu umat Islam dengan berkekuatan kecil untuk pertama kali dapat mengalahkan kaum musyrikin yang berjumlah besar, dan berperlengkapan yang cukup, dan mereka dalam peperangan ini memperoleh harta rampasan perang yang tidak sedikit. Oleh sebab itu timbullah masalah bagaimana membagi harta-harta rampasan perang itu, maka kemudian Allah menurunkan ayat pertama dari surat ini."),
  AlquranData(
      surah: "At-Taubah",
      arab: "التوبة",
      number: 9,
      ayat: 129,
      artinya: "Pengampunan",
      tempat: "Madaniyah",
      audio: "https://ia802609.us.archive.org/13/items/quraninindonesia/009AtTaubah.mp3",
      description: "Surat At Taubah terdiri atas 129 ayat termasuk golongan surat-surat Madaniyyah. Surat ini dinamakan At Taubah yang berarti pengampunan berhubung kata At Taubah berulang kali disebut dalam surat ini. Dinamakan juga dengan Baraah yang berarti berlepas diri yang di sini maksudnya pernyataan pemutusan perhubungan, disebabkan kebanyakan pokok pembicaraannya tentang pernyataan pemutusan perjanjian damai dengan kaum musyrikin.  Di samping kedua nama yang masyhur itu ada lagi beberapa nama yang lain yang merupakan sifat dari surat ini.  Berlainan dengan surat-surat yang lain, maka pada permulaan surat ini tidak terdapat basmalah, karena surat ini adalah pernyataan perang dengan arti bahwa segenap kaum muslimin dikerahkan untuk memerangi seluruh kaum musyrikin, sedangkan basmalah bernafaskan perdamaian dan cinta kasih Allah.  Surat ini diturunkan sesudah Nabi Muhammad s.a.w. kembali dari peperangan Tabuk yang terjadi pada tahun 9 H. Pengumuman ini disampaikan oleh Saidina 'Ali r.a. pada musim haji tahun itu juga."),
  AlquranData(
      surah: "Yunus",
      arab: "يونس",
      number: 10,
      ayat: 109,
      artinya: "Yunus",
      tempat: "Makkiyah",
      audio: "https://ia802609.us.archive.org/13/items/quraninindonesia/010Yunus.mp3",
      description: "Surat Yunus terdiri atas 109 ayat, termasuk golongan surat-surat Makkiyyah kecuali ayat 40, 94, 95, yang diturunkan pada masa Nabi Muhmmad s.a.w. berada di Madinah. Surat ini dinamai surat Yunus karena dalam surat ini terutama ditampilkan kisah Nabi Yunus a.s. dan pengikut-pengikutnya yang teguh imannya."),
];
