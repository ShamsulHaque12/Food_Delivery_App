import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  bool _obscuredPassword = true;
  bool _confirmPassword = true;

  @override
  Widget build(BuildContext context) {

    // Get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF0D0D25),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFF0D0D25),
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Center(
                    child: Text(
                      "Please sign up to get started",
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),

            Expanded(
              child: Container(
                width: screenWidth * 0.99,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("NAME"),
                      const SizedBox(height: 5),
                      TextField(
                        controller: nameController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Shamsul Haque",
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      const Text("EMAIL"),
                      const SizedBox(height: 5),
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "sujon@gmail.com",
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                       Text("PASSWORD"),
                      const SizedBox(height: 5),
                      TextField(
                        controller: passwordController,
                        obscureText: _obscuredPassword,
                        decoration: InputDecoration(
                          hintText: "PASSWORD",
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscuredPassword ? Icons.visibility_off : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscuredPassword = !_obscuredPassword;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      const Text("RE-TYPE PASSWORD"),
                      const SizedBox(height: 5),
                      TextField(
                        controller: confirmPasswordController,
                        obscureText: _confirmPassword,
                        decoration: InputDecoration(
                          hintText: "CONFIRM PASSWORD",
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _confirmPassword ? Icons.visibility_off : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _confirmPassword = !_confirmPassword;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // Sign-up logic here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "SIGN UP",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
