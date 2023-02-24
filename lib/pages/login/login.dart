import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loginC = Get.put(LoginController());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Masuk akun",
                    style: TextStyle(
                      color: Color(0xff1B1B1B),
                      fontFamily: "Poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                "Masukkan nomor handphone atau email & password kamu untuk masuk ke aplikasi",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff777777),
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Nomor HP atau email",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff777777),
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const TextField(
                autocorrect: false,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: "Masukkan nomor HP atau email",
                  labelStyle: TextStyle(
                    color: Color(0xffABABAB),
                    fontFamily: "Poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff777777),
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Obx(
                () => TextField(
                  autocorrect: false,
                  textInputAction: TextInputAction.done,
                  obscureText: loginC.isHidden.value,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    label: const Text(
                      "Password",
                      style: TextStyle(
                        color: Color(0xffABABAB),
                        fontFamily: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () => loginC.isHidden.toggle(),
                      icon: const Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Lupa password?",
                      style: TextStyle(
                        color: Color(0xffef6a37),
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "atau lanjutkan dengan",
                    style: TextStyle(
                      color: Color(0xff777777),
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size.fromWidth(156),
                      backgroundColor: const Color(0xffF0F0F0),
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/facebook.png"),
                        const SizedBox(width: 8),
                        const Text(
                          "Facebook",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size.fromWidth(156),
                      backgroundColor: const Color(0xffF0F0F0),
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/google.png"),
                        const SizedBox(width: 8),
                        const Text(
                          "Google",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 130),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffef6a37),
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: const Text(
                  "Masuk",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
