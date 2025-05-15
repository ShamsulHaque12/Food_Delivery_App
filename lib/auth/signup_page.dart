import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_pages/locetion_screen.dart';

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
    final media = MediaQuery.of(context);
    final screenWidth = media.size.width;
    final screenHeight = media.size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF0D0D25),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(screenWidth * 0.05, 20, screenWidth * 0.05, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
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
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.06,
                            vertical: screenHeight * 0.04,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("NAME"),
                              const SizedBox(height: 5),
                              TextField(
                                controller: nameController,
                                keyboardType: TextInputType.text,
                                decoration: _inputDecoration("Shamsul Haque"),
                              ),
                              const SizedBox(height: 20),

                              const Text("EMAIL"),
                              const SizedBox(height: 5),
                              TextField(
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: _inputDecoration("sujon@gmail.com"),
                              ),
                              const SizedBox(height: 20),

                              const Text("PASSWORD"),
                              const SizedBox(height: 5),
                              TextField(
                                controller: passwordController,
                                obscureText: _obscuredPassword,
                                decoration: _inputDecoration(
                                  "PASSWORD",
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
                                decoration: _inputDecoration(
                                  "CONFIRM PASSWORD",
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
                                    Get.to(() => const LocetionScreen());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: const Text(
                                    "SIGN UP",
                                    style: TextStyle(fontSize: 15, color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String hintText, {Widget? suffixIcon}) {
    return InputDecoration(
      hintText: hintText,
      filled: true,
      fillColor: Colors.grey[100],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      suffixIcon: suffixIcon,
    );
  }
}
