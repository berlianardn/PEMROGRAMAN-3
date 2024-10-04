import 'package:flutter/material.dart';
import 'package:flutter_application_1/beranda.dart';
import 'signup.dart'; // Import halaman SignUpPage

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void_tampil(){
    String username = _usernameController.text;
    String pass = _passwordController.text;

    Navigator.push(
    context, MaterialPageRoute(builder: (context) => HomePage()),
    );

    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Data Akun"),
        content: Text("Username: $username\n Password: $pass"),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Judul "Login"
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            // Kalimat "Welcome Back"
            const Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),

            // Kalimat "Enter your credentials to login"
            const Text(
              "Enter your credentials to login",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 32),

            // TextField untuk Username
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Username',
                hintText: 'Masukkan Username Anda',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // TextField untuk Password
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                hintText: 'Masukkan Password Anda',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            // Tombol Login
            Center(
              child: ElevatedButton(
                onPressed: () {
                void_tampil();
                },
                child: const Text('Login'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50), // Mengatur ukuran tombol
                  backgroundColor: Colors.blueGrey,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Link "Forgot Password?"
            TextButton(
              onPressed: () {
                // Aksi untuk Forgot Password
              },
              child: const Text("Forgot Password?"),
            ),
            const SizedBox(height: 8),

            // Link "Don't have an account? Sign Up"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? "),
                TextButton(
                  onPressed: () {
                    // Navigasi ke halaman sign-up
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpPage()),
                    );
                  },
                  child: const Text("Sign Up"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
