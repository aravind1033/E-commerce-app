import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controller/login_controller.dart';

class RegistrationPage extends StatelessWidget {
   RegistrationPage({super.key});

   @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (ctrl) {
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
                  controller: ctrl.registerNameCtrl,
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
                  controller: ctrl.registerNumberCtrl,
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
    );
  }
}
