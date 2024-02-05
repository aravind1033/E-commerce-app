import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
   RegistrationPage({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Create Your Account!!"),
            const SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: phoneNumberController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your Name ',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              controller: phoneNumberController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  print("onpressed");
                },
                child: const Text("Send Otp")),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {}, child: const Text("Login ")),
          ],
        ),
      ),
    );
  }
}
