import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetCardOrder extends StatelessWidget {
  const WidgetCardOrder({
    Key? key,
    required this.onTap,
    required this.nama,
    required this.berlakuSampaiTanggal,
    required this.estimasiSampai,
    required this.gambar,
    required this.harga,
    required this.jam,
    required this.kode,
    required this.status,
  }) : super(key: key);

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'aktif':
        return Color(0xFF46C731);
      case 'nonaktif':
        return Color(0xFF93000A);
      case 'diproses':
        return Color(0xFF46C731);
      case 'sampai':
        return Colors.white;
      default:
        return Colors.grey; // Warna default jika status tidak dikenali
    }
  }

  final VoidCallback onTap;
  final String nama;
  final String berlakuSampaiTanggal;
  final String estimasiSampai;
  final String gambar;
  final String harga;
  final String jam;
  final String kode;
  final String status;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 160,
        decoration: BoxDecoration(
          color: Color(0xFFBFC4F0),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 140,
                height: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    gambar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * (0.5),
                      child: Text(
                        nama,
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    ),
                    Text(
                      kode,
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "Rp. $harga",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Visibility(
                      visible: berlakuSampaiTanggal.isNotEmpty,
                      child: Text(
                        "Berlaku Sampai $berlakuSampaiTanggal",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Visibility(
                      visible: estimasiSampai.isNotEmpty,
                      child: Text(
                        "Estimasi Sampai $estimasiSampai",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: _getStatusColor(status),
                      ),
                      onPressed: () {
                        print(status);
                      },
                      child: Text(
                        status,
                        style: TextStyle(
                          color: status.toLowerCase() == 'sampai'
                              ? Colors.black
                              : Colors.white,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
