import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Text(
            "KABUPATEN PACITAN",
            style: TextStyle(fontFamily: "Poppins-B", fontSize: 16),
          ),
          Text(
            "Jawa timur, Jawa, Indonesia",
          ),
          SizedBox(height: 10),
          Text(
            "Sejarah singkat :",
            style: TextStyle(fontFamily: "Poppins-B", fontSize: 16),
          ),
          SizedBox(height: 10),
          Text("Sumber: Buku Pacitan The Heaven of Indonesia"),
          SizedBox(height: 5),
          Text(
            "Didalam berbagai sumber yang ada tentang fakta sejarah Pacitan, disampaikan bahwa asal nama Pacitan berasal dari bahasa Jawa, Pacewetan, Pace dan Wetan. Pace adalah salah satu nama buah, sedangkan wetan adalah arah angin yang berarti timur.\n",
            textAlign: TextAlign.justify,
            style: TextStyle(fontFamily: "Poppins-R"),
          ),
          Text(
            "Cerita mengenai asal mula Pacitan ini terdapat dalam buku Legenda Rakyat Pacitan dan babad tanah Pacitan, yang mengatakan bahwa Pacitan berasal dari Pacewetan. Pace adalah nama buah, atau dikatakan adalah mengkudu yang memberi kekuatan, sedangkan wetan adalah timur.\n",
            textAlign: TextAlign.justify,
            style: TextStyle(fontFamily: "Poppins-R"),
          ),
          Text(
            "Pendapat ini berasal dari legenda yang bersumber pada peristiwa perang Mengkubumen atau Perang Palihan Nagari (1746-1755 M). Perang ini terjadi di Pacitan saat Pangeran Mangkubumi dari keraton Surakarta dalam peperangannya itu sampai ke wilayah pesisir selatan di Pacitan. Saat itu sedang terjadi perang gerilya 1747-1749 (Perang Palihan Nagari (1746-1755) ) melawan VOC Belanda, Pangeran Mangkubumi mengalami kekalahan, beliau disertai 12 orang pengikutnya mundur ke arah selatan sambil mencari dukungan untuk membantu perjuangan perang tersebut.\n",
            textAlign: TextAlign.justify,
            style: TextStyle(fontFamily: "Poppins-R"),
          ),
          Text(
            "Dalam pertempuran tersebut, Pangeran Mangkubumi mengalami kekalahan dan terpukul mundur, sehingga beliau beserta pasukan yang tersisa menggunakan strategi melarikan diri ke dalam hutan dengan kondisi tubuh lelah, lemah dan lesu akibat dari perbekalan yang mereka bawa habis. Namun pada akhirnya kekuatan Pangeran menjai pulih berkat pertolongan abdinya bernama Setraketipa.\n",
            textAlign: TextAlign.justify,
            style: TextStyle(fontFamily: "Poppins-R"),
          ),
          Text(
            "Setraketipa memberikan buah mengkudu, atau yang kemudian disebut Pace kepada pangeran. Beliau diberi sebuah minuman yaitu buah pace yang telah direndam dengan legen buah kelapa, dan seketika itu juga kekuatan Pangeran Mangkubumi pulih kembali. Daerah itu kemudian diingat dengan pace sapengetan dan dalam pembicaraan keseharian sering disingkat dengan pace-tan lalu menjadilah sebuah nama menjadi kabupaten Pacitan.\n",
            textAlign: TextAlign.justify,
            style: TextStyle(fontFamily: "Poppins-R"),
          ),
          Text(
            "Letak geografis :",
            style: TextStyle(fontFamily: "Poppins-B", fontSize: 16),
          ),
          SizedBox(height: 10),
          Text("Sumber: jatim.bpk.go.id/kabupaten-pacitan"),
          SizedBox(height: 5),
          Text(
            "Secara astronomis, Kabupaten Pacitan berada pada 110º 55’–111º 25’ Bujur timur dan 7º 55’–8º 17’ Lintang Selatan. Luas wilayah Pacitan adalah 1.389,87 km2, yang dibagi menjadi 12 kecamatan. Pusat pemerintahannya ada di Kecamatan Pacitan.\n",
            textAlign: TextAlign.justify,
          ),
          Text(
            "Adapun batas-batas wilayah Kabupaten Pacitan adalah sebagai berikut:\n• Sebelah Utara	    :	Kabupaten Ponorogo\n• Sebelah Barat     :	Kabupaten Wonogiri (Jawa Tengah)\n• Sebelah Selatan	:	Samudra Hindia\n• Sebelah Timur	    :	Kabupaten Trenggalek\n",
            textAlign: TextAlign.justify,
          ),
          Text(
            "Jumlah wilayah :",
            style: TextStyle(fontFamily: "Poppins-B", fontSize: 16),
          ),
          SizedBox(height: 10),
          Text("Sumber: pacitankab.bps.go.id"),
          SizedBox(height: 5),
          Text(
            "Adapun wilayah kecamatan di Kabupaten Pacitan adalah sebagai berikut:\n• Kec.Donorojo - 12 desa\n• Kec.Punung - 13 desa\n• Kec.Pringkuku - 12 desa\n• Kec.Pacitan - 20 desa\n• Kec.Kebonagung - 19 desa\n• Kec.Arjosari - 17 desa\n• Kec.Nawangan - 9 desa\n• Kec.Bandar - 8 desa\n• Kec.Tegalombo - 11 desa\n• Kec.Tulakan -	16 desa\n• Kec.Ngadirojo - 18 desa\n• Kec.Sudimoro - 10 desa\n",
            textAlign: TextAlign.justify,
          ),
          Text(
            "Peta wilayah :",
            style: TextStyle(fontFamily: "Poppins-B", fontSize: 16),
          ),
          SizedBox(height: 10),
          Text("Sumber: trendareawisata.blogspot.com"),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
