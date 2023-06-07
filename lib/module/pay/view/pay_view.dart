import 'package:flutter/material.dart';
import 'package:cinema_booking_app/core.dart';
import 'package:google_fonts/google_fonts.dart';

class PayView extends StatefulWidget {
  const PayView({Key? key}) : super(key: key);

  Widget build(context, PayController controller) {
    controller.view = this;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0x00161621), Color(0xFF161621)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "Checkout",
            style: GoogleFonts.roboto(
                color: const Color(0xFFF1F1F1),
                fontSize: 27,
                fontWeight: FontWeight.w800),
          ),
          leading: IconButton(
            padding: EdgeInsets.only(left: Get.width * 0.08),
            onPressed: () {
              Get.back();
            },
            icon: Image.asset(
              "assets/buttons/back_button.png",
              width: Get.width * 0.13,
              height: Get.height * 0.06,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.07),
                Row(
                  children: [
                    Image.asset("assets/movies/checkout/endgame.png"),
                    RichText(
                      text: TextSpan(
                        text: "Avengers:\nEndgame",
                        children: [
                          TextSpan(text: "Action, Sci-fi, Fantasy"),
                          TextSpan(text: "Medellín, Colombia"),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<PayView> createState() => PayController();
}
