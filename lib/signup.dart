import 'package:flutter/material.dart';
import 'login.dart'; // Import halaman LoginPage

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        backgroundColor: const Color.fromARGB(255, 216, 144, 139),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, 
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            // Judul "Sign Up"
            const Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            
            // Kalimat "Create your account"
            const Text(
              "Create your account",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 32),

            // Form Sign Up
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Username',
                hintText: 'Masukkan Username Anda',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
                hintText: 'Masukkan Email Anda',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                hintText: 'Masukkan Password Anda',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                labelText: 'Confirm Password',
                hintText: 'Masukkan Confirm Password Anda',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            // Tombol Sign Up
            ElevatedButton(
              onPressed: () {
                // Aksi ketika tombol sign-up ditekan
              },
              child: const Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50), 
                backgroundColor:  const Color.fromARGB(255, 216, 144, 139), 
              ),
            ),
            const SizedBox(height: 16),
            
            // Teks "OR"
            const Center(
              child: Text(
                "OR",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            
            // Tombol "Sign Up with Google"
            ElevatedButton.icon(
              onPressed: () {
                // Aksi ketika tombol "Sign Up with Google" ditekan
              },
              icon: const Icon(Icons.g_mobiledata),
              label: const Text('Sign Up with Google'),
              style: ElevatedButton.styleFrom(
                backgroundColor:  const Color.fromARGB(255, 216, 144, 139), 
                foregroundColor: Colors.black,
                minimumSize: const Size(200, 50), 

              ),
            ),
            const SizedBox(height: 24),
            
            // Link "Already have an account? Login"
            TextButton(
              onPressed: () {
                // Navigasi kembali ke halaman login
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text("Already have an account? Login"),
            ),
          ],
        ),
      ),
    );
  }
}
