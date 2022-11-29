import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/widgets/button.dart';

void main() {
  runApp(HesapMakinesi());
}

class HesapMakinesi extends StatefulWidget {
  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  //const Myapp({Key? key}) : super(key: key);

  double? sayi1;
  double? sayi2;
  String? Gosterilen = " ";
  String? Gecmis = " ";
  String? islem = "islem";
  String? sonuc = " ";
  double? hafiza = 0.0;

  void butonTiklama(String butonDegeri) {
    if (butonDegeri == "M") {
      if (hafiza == null) {
        hafiza = double.parse(Gosterilen!.toString());
        sonuc = " ";
      } else {
        hafiza = hafiza! + double.parse(Gosterilen!.toString());
        sonuc = " ";
      }
    }
    else if (butonDegeri == "C") {
      hafiza = null;
      sonuc = " ";
    }
    else if (butonDegeri == "MR") {
      if (hafiza == null) {
        sonuc = "";
      } else {
        sonuc = hafiza!.toString();
      }
    }
    else if (butonDegeri == "AC") {
      sonuc = 0.toString();
    }
    else if (butonDegeri == "*") {
      sayi1 = double.parse(Gosterilen.toString());
      sonuc = " ";
      islem = butonDegeri;
    }
    else if (butonDegeri == "-") {
      sayi1 = double.parse(Gosterilen.toString());

      sonuc = " ";
      islem = butonDegeri;
    }
    else if (butonDegeri == "+") {
      sayi1 = double.parse(Gosterilen.toString());
      sonuc = " ";
      islem = butonDegeri;
    }
    else if (butonDegeri == "/") {
      sayi1 = double.parse(Gosterilen.toString());
      sonuc = " ";
      islem = butonDegeri;


    }

    else if (butonDegeri == "=") {
      sayi2 = double.parse(Gosterilen.toString());

      if (islem == "*") {
        sonuc = (sayi1! * sayi2!).toString();
      } else if (islem == "+") {
        sonuc = (sayi1! + sayi2!).toString();
      } else if (islem == "-") {
        sonuc = (sayi1! - sayi2!).toString();
      } else if (islem == "/") {
        sonuc = (sayi1! / sayi2!).toString();
      }
    } else {
      sonuc = int.parse(Gosterilen! + butonDegeri).toString();
    }

    setState(() {
      Gosterilen = sonuc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Hesap Makinesi"),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment(1.0, 1.0),
                  child: Text(Gecmis!,
                      style: GoogleFonts.rubik(
                          fontSize: 30, color: Colors.black54)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment(1.0, 1.0),
                    child: Text(
                      Gosterilen!,
                      style:
                          GoogleFonts.rubik(fontSize: 40, color: Colors.black),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HesapMakinesiButon(
                    metin: "M",
                    dolguRengi: 0xFFECEFF1,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                  HesapMakinesiButon(
                    metin: "C",
                    dolguRengi: 0xFFECEFF1,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                  HesapMakinesiButon(
                    metin: "MR",
                    dolguRengi: 0xFFECEFF1,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                  HesapMakinesiButon(
                    metin: "/",
                    dolguRengi: 0xFFFFA000,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HesapMakinesiButon(
                    metin: "7",
                    dolguRengi: 0xFFECEFF1,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                  HesapMakinesiButon(
                    metin: "8",
                    dolguRengi: 0xFFECEFF1,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                  HesapMakinesiButon(
                    metin: "9",
                    dolguRengi: 0xFFECEFF1,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                  HesapMakinesiButon(
                    metin: "*",
                    dolguRengi: 0xFFFFA000,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HesapMakinesiButon(
                    metin: "4",
                    dolguRengi: 0xFFECEFF1,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                  HesapMakinesiButon(
                    metin: "5",
                    dolguRengi: 0xFFECEFF1,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                  HesapMakinesiButon(
                    metin: "6",
                    dolguRengi: 0xFFECEFF1,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                  HesapMakinesiButon(
                    metin: "-",
                    dolguRengi: 0xFFFFA000,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HesapMakinesiButon(
                    metin: "1",
                    dolguRengi: 0xFFECEFF1,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                  HesapMakinesiButon(
                    metin: "2",
                    dolguRengi: 0xFFECEFF1,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                  HesapMakinesiButon(
                    metin: "3",
                    dolguRengi: 0xFFECEFF1,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                  HesapMakinesiButon(
                    metin: "+",
                    dolguRengi: 0xFFFFA000,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HesapMakinesiButon(
                    metin: "AC",
                    dolguRengi: 0xFFECEFF1,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                  HesapMakinesiButon(
                    metin: "0",
                    dolguRengi: 0xFFECEFF1,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                  HesapMakinesiButon(
                    metin: ",",
                    dolguRengi: 0xFFECEFF1,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                  HesapMakinesiButon(
                    metin: "=",
                    dolguRengi: 0xFFFFA000,
                    metinBoyutu: 20,
                    metinRengi: 0xFF000000,
                    tiklama: butonTiklama,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
