import 'package:flutter/material.dart';
import 'package:hicode/category_buttons.dart';
import 'package:hicode/profile_page.dart';
import 'package:hicode/search_bar.dart';
import 'package:hicode/topic_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _filterCategories(String query) {

  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false, 
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 70,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(222, 255, 223, 223),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          border: Border.all(
            color: Colors.redAccent,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.menu, color: _selectedIndex == 0 ? const Color.fromARGB(255, 255, 69, 69) : Colors.grey),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
               icon: Icon(Icons.sos_outlined, color: _selectedIndex == 1 ? const Color.fromARGB(255, 255, 69, 69) : Colors.grey),
              onPressed: () => _onItemTapped(1),
            ),
            IconButton(
              icon: Icon(Icons.calendar_today, color: _selectedIndex == 2 ? const Color.fromARGB(255, 255, 69, 69) : Colors.grey),
              onPressed: () => _onItemTapped(2),
            ),
            IconButton(
              icon: Icon(Icons.people, color: _selectedIndex == 3 ? const Color.fromARGB(255, 255, 69, 69) : Colors.grey),
              onPressed: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(30.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.redAccent.withOpacity(0.1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                border: Border.all(
                  color: Colors.redAccent,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "KadHak",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                          ),
                        ),
                         GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfilePage(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.red.shade100,
                          child: Icon(Icons.person, color: Colors.redAccent),
                        ),
                      ),
                    ],
                  ),
                    const SizedBox(height: 20),
                    
                    const SearchBarWidget(), 
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 244, 103, 103),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                "\nKADINLAR GÜNÜMÜZ\nKUTLU OLSUN!!\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
         
          const CategoryButtons(),

          const Expanded(child: TopicList()),
        ],
      ),
    );
  }
}
