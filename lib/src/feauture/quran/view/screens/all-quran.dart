import 'package:flutter/material.dart';
import 'package:quran/src/feauture/quran/model/quran-model.dart';
import 'package:quran/src/feauture/quran/view/screens/soura.dart';

class AllQuran extends StatelessWidget {
  const AllQuran({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // 🔹 تحديد اتجاه التطبيق بالكامل
      child: Scaffold(
        appBar: AppBar(
          title: const Text('القرآن الكريم 📖'),
          backgroundColor: Colors.green,
        ),
        body: ListView.builder(
          itemCount: sour.length,
          itemBuilder: (context, index) {
            final surah = sour[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
                child: ListTile(
                  contentPadding: const EdgeInsets.all(12),
                  leading: CircleAvatar(
                    backgroundColor: Colors.green[800],
                    child: Text(
                      '${surah.index}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text(
                    surah.name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('عدد الآيات: ${surah.ayat}'),
                  trailing:
                      const Icon(Icons.arrow_back_ios), // 🔹 تعديل الأيقونة
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuranDetail(surah: surah),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
