import 'package:flutter/material.dart';
import 'login.dart'; // Import halaman LoginPage

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  void_tampil(){
    String username = _usernameController.text;
    String email = _emailController.text;
    String pass = _passwordController.text;
    String cpw = _confirmPassController.text;

    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Data Akun"),
        content: Text("Username: $username\n Email: $email\n Password: $pass\n Confirm: $cpw"),
      );
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        backgroundColor: Colors.blueGrey,
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
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Username',
                hintText: 'Masukkan Username Anda',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
                hintText: 'Masukkan Email Anda',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                hintText: 'Masukkan Password Anda',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _confirmPassController,
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
              void_tampil();
              },
              child: const Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50), 
                backgroundColor:  Colors.blueGrey,
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
                backgroundColor:  Colors.blueGrey, 
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
