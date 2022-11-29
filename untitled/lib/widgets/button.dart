import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HesapMakinesiButon extends StatelessWidget {
  final String metin;
  final int dolguRengi;
  final int metinRengi;
  final double metinBoyutu;
  final Function tiklama;

  const HesapMakinesiButon(
      {
      required this.metin,
      required this.dolguRengi,
      required this.metinRengi,
      required this.metinBoyutu,
      required this.tiklama});

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(bottom: 8.0),
      child: SizedBox(width: 70,height: 70,
        child: FlatButton(
          onPressed: () {tiklama(metin);},
          textColor: Color(metinRengi),
          child: Text(
            metin,
            style: GoogleFonts.rubik(fontSize: metinBoyutu),
          ),
          color: Color(dolguRengi),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
