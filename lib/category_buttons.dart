import 'package:flutter/material.dart';
import 'package:hicode/populer_category.dart';
import 'package:hicode/women_category.dart';
import 'package:hicode/womentec_category.dart';

class CategoryButtons extends StatefulWidget {
  const CategoryButtons({super.key});

  @override
  _CategoryButtonsState createState() => _CategoryButtonsState();
}

class _CategoryButtonsState extends State<CategoryButtons> {
  int selectedIndex = 0;

  final List<String> categories = [
    "Popüler",
    "Kadın Hakları",
    "Teknolojide Kadın Hakları",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length, (index) {
          bool isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
          
              _navigateToCategoryPage(context, categories[index]);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: isSelected
                    ? Colors.redAccent.withOpacity(0.5) 
                    : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isSelected ? Colors.redAccent : Colors.grey.shade400,
                  width: isSelected ? 2.0 : 1.0, 
                ),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
  void _navigateToCategoryPage(BuildContext context, String categoryName) {
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
}
