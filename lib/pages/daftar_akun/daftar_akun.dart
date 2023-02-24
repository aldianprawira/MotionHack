import 'package:flutter/material.dart';

class DaftarAkun extends StatelessWidget {
  const DaftarAkun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "Daftar akun baru",
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
              "Masukkan nomor handphone kamu untuk mendapatkan kode OTP",
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
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 72,
                  height: 37,
                  color: const Color(0xffF0F0F0),
                  child: const Text(
                    "+62",
                    style: TextStyle(
                      color: Color(0xff1B1B1B),
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                const Expanded(
                  child: TextField(
                    autocorrect: false,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelText: "Masukkan nomor HP",
                      labelStyle: TextStyle(
                        color: Color(0xffABABAB),
                        fontFamily: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 450),
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
    );
  }
}
