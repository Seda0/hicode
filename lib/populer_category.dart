import 'package:flutter/material.dart';

class PopularCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popüler'),
        backgroundColor:   const Color.fromARGB(255, 244, 103, 103),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text(
  'Cumhurbaşkanı Recep Tayyip Erdoğan ve Aile ve Sosyal Hizmetler Bakanı Mahinur Özdemir Göktaş\'ın katılımıyla 25 Kasım 2023 tarihinde açıklanan "Kadına Yönelik Şiddetle Mücadele 2024 Yılı Faaliyet Planı" da önemli bir adımdır. Bu plan, kadına yönelik şiddetle mücadelede devletin kararlılığını ve kadınların haklarının korunmasına yönelik atılacak adımları içermektedir.',
  style: TextStyle(fontSize: 18),
),
            SizedBox(height: 20),
            Text(
  'Anayasa Mahkemesi\'nin 28 Nisan 2023 tarihli kararıdır. Bu karar, Medeni Kanun\'un kadının evlenmeyle eşinin soyadını almasını öngören 187. maddesinin "eşitlik ilkesine aykırı" olduğu gerekçesiyle iptal edilmesine yönelik olup, iptal kararı 9 ay sonra yürürlüğe girecektir. Bu gelişme, kadınların yıllardır sürdürdüğü hak mücadelesinin bir sonucudur.',
  style: TextStyle(fontSize: 18),
),
          ],
        ),
      ),
    );
  }
}
