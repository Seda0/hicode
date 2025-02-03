import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hicode/signup.dart';
import 'package:hicode/homepage.dart';

void main() {
  runApp(const LogIn());
}

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final FirebaseAuth _auth = FirebaseAuth.instance;

    Future<void> signIn() async {
    try {
    await _auth.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
    ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
        content: Center(child: Text("Giriş Başarılı!")),
        duration: Duration(seconds: 1),
       backgroundColor: const Color.fromARGB(255, 120, 190, 112).withOpacity(0.5),  
      ),
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  } on FirebaseAuthException catch (e) {
    String errorMessage = "Bilinmeyen bir hata oluştu";
    if (e.code == 'user-not-found') {
      errorMessage = "Bu e-posta ile kayıtlı bir kullanıcı bulunamadı.";
    } else if (e.code == 'wrong-password') {
      errorMessage = "Yanlış şifre! Lütfen tekrar deneyin.";
    } else if (e.code == 'invalid-email') {
      errorMessage = "Geçersiz e-posta adresi!";
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Hata: $errorMessage"),
        duration: const Duration(seconds: 1), 
        backgroundColor: Colors.redAccent.withOpacity(0.5),  
      ),
    );
  }
    }

    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand, 
        children: [
          Image.asset(
            'lib/assets/images/grsl1.jpg', 
            fit: BoxFit.cover, 
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 200.0), 
                      child: Text(
                        'En büyük sevgi, \ninsanlık sevgisidir.', 
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                          fontSize: 35.0, 
                          fontWeight: FontWeight.bold, 
                          color: Colors.white, 
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.6),
                              blurRadius: 4.0,
                              offset: const Offset(2, 2), 
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 100), 
                  Container(
                    height: 220, 
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6), 
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50.0), 
                        bottomLeft: Radius.circular(50.0), 
                        topLeft: Radius.circular(12.0), 
                        bottomRight: Radius.circular(12.0),
                      ),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white, 
                            labelText: 'E-posta',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: 'Şifre',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 44),
                  ElevatedButton(
                    onPressed: signIn,
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50), 
                    ),
                    child: const Text('Giriş Yap'),
                  ),
                  const SizedBox(height: 10), 
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUp()),
                        );
                      },
                      child: const Text(
                        'Hesabın yok mu? Üye ol',
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 16, 
                          fontWeight: FontWeight.bold, 
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
