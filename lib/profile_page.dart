import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:io';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final email = user?.email ?? "Bilinmeyen Kullanıcı";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Profil"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.red.shade100,
              child: Icon(Icons.person, color: Colors.redAccent, size: 40),
            ),
            const SizedBox(height: 10),
            Text(
              email,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.redAccent),
              title: Text("Ayarlar"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.language, color: Colors.redAccent),
              title: Text("Dil Seçenekleri"),
              onTap: () {},
            ),
             ListTile(
              leading: Icon(Icons.palette_outlined, color: Colors.redAccent),
              title: Text("Tema değiştir"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.redAccent),
              title: Text("Çıkış Yap"),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                exit(0);
              },
            ),
          ],
        ),
      ),
    );
  }
}
