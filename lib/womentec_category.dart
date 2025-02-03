import 'package:flutter/material.dart';

class WomenInTechCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teknolojide Kadın Hakları'),
        backgroundColor: const Color.fromARGB(255, 244, 103, 103),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text(
  'Dijitalleşme ile birlikte kadınların teknolojiye erişimi ve dijital dünyadaki temsiliyeti büyük önem kazanmıştır. Ancak birçok kadın, dijital okuryazarlık konusunda erkeklere kıyasla daha az fırsata sahiptir ve siber zorbalık gibi tehditlerle karşı karşıya kalmaktadır.\n\nKadınların teknoloji alanında güçlendirilmesi, STEM (bilim, teknoloji, mühendislik ve matematik) alanlarında daha fazla yer almaları için teşvik edilmesi gerekmektedir. Ayrıca siber zorbalığa karşı kadınların korunması büyük önem taşır.\n\nTürkiye’den Örnekler:\nTeknolojide Kadın Derneği: Kadınların teknoloji alanında güçlenmesini destekleyen bir sivil toplum kuruluşudur.\nGeleceği Yazan Kadınlar Projesi: Turkcell’in desteklediği, kadınlara yazılım eğitimi veren bir projedir.',
  style: TextStyle(fontSize: 18),
),
        ],
        ),
      ),
    );
  }
}
