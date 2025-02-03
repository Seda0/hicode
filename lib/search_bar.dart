import 'package:flutter/material.dart';
import 'package:diacritic/diacritic.dart';  // diacritic paketini ekledik
import 'package:hicode/populer_category.dart';  // Kategoriler için sayfalar
import 'package:hicode/women_category.dart';
import 'package:hicode/womentec_category.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  TextEditingController _controller = TextEditingController();
  String searchQuery = "";

  List<String> categories = [
    "Popüler",
    "Kadın Hakları",
    "Teknolojide Kadın Hakları",
  ];

  List<String> topics = [
    "Kadınların Sosyal Hakları",
    "Kadın ve Teknoloji",
    "Eğitimde Kadın Hakları",
    "Ekonomik Kalkınma ve Kadın",
    "Kadın ve Hukuk",
    "Kadın Liderliği",
  ];

  List<String> filteredCategories = [];
  List<String> filteredTopics = [];

  @override
  void initState() {
    super.initState();
    filteredCategories = categories;
    filteredTopics = topics;
  }

  String normalizeTurkishCharacters(String input) {
    return removeDiacritics(input).toLowerCase();  
  }

  void _updateSearchQuery(String query) {
    setState(() {
      searchQuery = query;
      filteredCategories = categories
          .where((category) =>
              normalizeTurkishCharacters(category).contains(normalizeTurkishCharacters(query)))
          .toList();
      filteredTopics = topics
          .where((topic) =>
              normalizeTurkishCharacters(topic).contains(normalizeTurkishCharacters(query)))
          .toList();
    });
  }

  void _navigateToCategoryPage(String categoryName) {
    switch (categoryName) {
      case "Popüler":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PopularCategoryPage()),
        );
        break;
      case "Kadın Hakları":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WomenCategoryPage()),
        );
        break;
      case "Teknolojide Kadın Hakları":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WomenInTechCategoryPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          onChanged: _updateSearchQuery,
          decoration: InputDecoration(
            hintText: "Arama yapın...",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),

        if (searchQuery.isNotEmpty) ...[
          Container(
            height: 200,  
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (filteredCategories.isNotEmpty) ...[
                    for (var category in filteredCategories)
                      GestureDetector(
                        onTap: () => _navigateToCategoryPage(category),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            category,
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  ],
                  if (filteredTopics.isNotEmpty) ...[
                    for (var topic in filteredTopics)
                      GestureDetector(
                        onTap: () {
                          print('Konu seçildi: $topic');
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            topic,
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  ],
                ],
              ),
            ),
          ),
        ]
      ],
    );
  }
}
