import 'package:flutter/material.dart';

class WomenCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kadın Hakları'),
        backgroundColor: const Color.fromARGB(255, 244, 103, 103),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text(
          'Kadın hakları, kadınların erkeklerle eşit haklara sahip olması gerektiğini vurgulayan temel insan haklarıdır. Bu haklar eğitim, sağlık, çalışma hayatı, siyasi katılım, mülkiyet hakkı, şiddetten korunma ve sosyal haklar gibi birçok alanda güvence altına alınmıştır. Tarih boyunca kadınlar, haklarını elde etmek için mücadele etmiş ve uluslararası sözleşmelerle bu haklar koruma altına alınmıştır.\n\nKadın haklarının temel amacı, kadınların özgür bireyler olarak toplumda aktif bir şekilde yer almasını sağlamaktır. Ancak günümüzde hala pek çok ülkede kadınlar ayrımcılıkla karşılaşmaktadır. Kadın haklarının güçlendirilmesi için toplumsal farkındalık, hukuki düzenlemeler ve kadınların desteklenmesi önemlidir.\n\nTürkiye’den Örnekler:\n\n1926 Türk Medeni Kanunu: Osmanlı döneminde kadınlar miras, boşanma ve velayet gibi konularda eşitsizlik yaşarken, 1926’da kabul edilen Türk Medeni Kanunu ile kadınlar erkeklerle eşit haklara kavuşmuştur.\n\n1934 Kadınlara Seçme ve Seçilme Hakkı: Türkiye, birçok Avrupa ülkesinden önce kadınlara seçme ve seçilme hakkı tanımış, kadınlar 1935 seçimlerinde ilk kez oy kullanmıştır.',
          style: TextStyle(fontSize: 18),
        ),
          ],
          ),
        ),
      ),
      
    );
  }
}
