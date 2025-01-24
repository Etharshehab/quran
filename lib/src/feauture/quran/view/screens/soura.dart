import 'package:flutter/material.dart';
import 'package:quran/src/feauture/quran/model/quran-model.dart';

class QuranDetail extends StatelessWidget {
  final AyatSour surah;

  const QuranDetail({super.key, required this.surah});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // 🔹 تحديد اتجاه النص إلى اليمين
      child: Scaffold(
        appBar: AppBar(
          title: Text(surah.name),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // 🔹 محاذاة النصوص إلى اليمين
              children: [
                Text(
                  surah.displayqoran,
                  textAlign: TextAlign.right, // 🔹 محاذاة النص
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    height: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
