import 'package:flutter/material.dart';
import 'package:hicode/topic_detail_page.dart';

class TopicList extends StatelessWidget {
  const TopicList({super.key});

  final List<Map<String, String>> topics = const [
    {
      "title": "Kadınların Siyasette Temsili",
      "content": "Kadınların siyasete katılımı, toplumsal cinsiyet eşitliği açısından önemli bir adımdır. Tarih boyunca kadınlar, seçme ve seçilme hakkı için mücadele etmiş ve birçok ülkede bu hakları kazanmıştır. Ancak günümüzde bile kadınların karar alma mekanizmalarındaki temsiliyet oranı erkeklere kıyasla düşüktür.\nSiyasette kadın temsili arttıkça, toplumsal eşitlik ve sosyal politikalar daha adil hale gelmektedir. Kadın liderlerin varlığı, kadın haklarının gelişmesine önemli katkılar sağlar.\n\nTürkiye’den Örnekler:\n1934 Kadınların Seçme ve Seçilme Hakkı: Türkiye’de kadınlar, birçok Avrupa ülkesinden önce seçme ve seçilme hakkı kazanmıştır.\nİlk Kadın Başbakan Tansu Çiller (1993): Türkiye'nin ilk ve tek kadın başbakanıdır."
},
    {
      "title": "Kadınların Mülkiyet ve Miras Hakkı",
      "content": "Kadınların mülkiyet ve miras hakkı, ekonomik bağımsızlıkları için büyük önem taşır. Geçmişte kadınlar miras hakkından mahrum bırakılmış, ancak zamanla bu eşitsizlik hukuki düzenlemelerle giderilmiştir.\nKadınların mülk sahibi olması ve miras hakkına sahip olması, ekonomik özgürlüğün temel taşlarından biridir. Birçok ülkede kadınların toprak ve mülk edinme hakları sınırlanmış, ancak kadın hakları hareketleri sayesinde bu haklar genişletilmiştir.\n\nTürkiye’den Örnekler:\nTürk Medeni Kanunu (1926): Kadınlara miras ve mülkiyet haklarında erkeklerle eşit haklar tanımıştır.\nKadın Çiftçilere Destek Programları: Tarım Bakanlığı tarafından kırsal bölgelerde kadınların mülk sahibi olmalarını desteklemek için çeşitli projeler yürütülmektedir."
},
    {
      "title": "Kadınların Sağlık Hakkı",
      "content": "Kadınların sağlık hizmetlerine erişimi, kaliteli bir yaşam sürmeleri için temel bir haktır. Üreme sağlığı, doğum hizmetleri, cinsel sağlık eğitimi ve genel sağlık hizmetleri kadın haklarının bir parçasıdır.\nKadınların sağlık hakkı, sadece fiziksel sağlık değil, aynı zamanda psikolojik ve sosyal sağlığı da kapsar. Dünyada birçok kadın, sağlık hizmetlerine erişimde ciddi sorunlar yaşamaktadır.\n\nTürkiye’den Örnekler:\nAna Çocuk Sağlığı Merkezleri: Kadınların doğum öncesi ve sonrası sağlık hizmetlerine erişimini artırmak için kurulmuştur.\nHPV Aşısı Uygulamaları: Rahim ağzı kanserine karşı koruma sağlayan HPV aşısı, kadın sağlığını destekleyen önemli bir adımdır."
},
    {
      "title": "Kadınların Eşit Ücret Hakkı",
      "content": "Kadınlar, dünya genelinde erkeklerle aynı işi yapmalarına rağmen daha düşük ücret alabilmektedir. Bu durum, iş hayatında cinsiyet ayrımcılığının en büyük göstergelerinden biridir.\nKadınların ekonomik bağımsızlığı, toplumdaki rollerini güçlendiren en önemli faktörlerden biridir. Eşit işe eşit ücret hakkı, kadınların ekonomik haklarının korunması açısından büyük önem taşır.\n\nTürkiye’den Örnekler:\n4857 Sayılı İş Kanunu: Kadınlara eşit ücret hakkı tanınmasını içeren önemli bir düzenlemedir.\nKadın İstihdamını Destekleyen Teşvikler: Kadın girişimcilere yönelik devlet teşvikleri ve hibelerle ekonomik güçlenmeleri sağlanmaktadır."
},
    {
      "title": "Kadınların Çocuk ve Aile Hakları",
      "content": "Kadınların aile içinde sahip olduğu haklar, toplumsal cinsiyet eşitliği açısından büyük önem taşır. Kadınlar, anne olarak da hukuki güvencelere sahiptir. Boşanma, velayet ve nafaka gibi konular kadın haklarıyla doğrudan ilişkilidir.\nKadınların aile içindeki haklarının korunması, kadınların bağımsız bireyler olarak varlık göstermesini sağlar.\n\nTürkiye’den Örnekler:\n6284 Sayılı Kanun: Aile içi şiddete maruz kalan kadınları koruma altına alır.\nÇocuk Destek Merkezleri: Kadınların çocuklarıyla birlikte barınma ve destek hizmetleri almasını sağlayan merkezlerdir."
},
    {
  "title": "Kadın ve Eğitim Hakkı",
    "content": "Eğitim hakkı, kadınların bireysel gelişimi ve topluma katkı sağlaması için en temel insan haklarından biridir. Tarih boyunca kadınlar eğitimden mahrum bırakılmış, ancak zamanla eşit eğitim hakkı için önemli kazanımlar elde edilmiştir. Eğitim, kadınların ekonomik bağımsızlık kazanmasını, karar alma mekanizmalarında yer almasını ve bilinçlenmesini sağlar.\n\nBirçok ülkede kadınların okula gitme oranı erkeklere kıyasla daha düşüktür. Erken evlilik, toplumsal cinsiyet rolleri ve ekonomik nedenler gibi faktörler, kız çocuklarının eğitim hakkını engellemektedir. Eğitim hakkının güvence altına alınması, toplumsal kalkınmanın anahtarıdır.\n\nTürkiye’den Örnekler:\n- Tevhid-i Tedrisat Kanunu (1924): Eğitimde birliği sağlayarak kadınların eğitim hakkını güvence altına almıştır.\n- Haydi Kızlar Okula Kampanyası (2003): UNICEF ve Milli Eğitim Bakanlığı iş birliğiyle, özellikle kırsal bölgelerdeki kız çocuklarının eğitime katılımını artırmak amacıyla başlatılmış bir kampanyadır."
},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: topics.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
          child: ListTile(
            tileColor: Colors.grey.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            title: Text(
              topics[index]["title"]!,
              style: const TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicDetailPage(
                    title: topics[index]["title"]!,
                    content: topics[index]["content"]!,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
