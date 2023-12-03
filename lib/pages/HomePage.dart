import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dukaan/pages/Payments.dart';
import 'package:dukaan/pages/ExtraChargesPage.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<String> images = [
    "lib/images/Market.png",
    "lib/images/Onlinepayments.png",
    "lib/images/Discountcoupons.png",
    "lib/images/Mycustomers.png",
    "lib/images/QRcode.png",
    "lib/images/Extracharges.png",
    "lib/images/Orderforms.png",
  ];

  List<String> titles = [
    "Marketing \n Designs",
    "Online Payments",
    "Discount Coupons",
    "My Customers",
    "Store QR Codes",
    "Extra Charges",
    "Order form"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 216, 216),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          centerTitle: true,
          title: Text(
            'Manage Store',
            style: GoogleFonts.montserrat(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 21, 100, 165),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            crossAxisSpacing: 22.0,
            mainAxisSpacing: 27.0,
          ),
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                if (titles[index] == "Online Payments") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Payments()),
                  );
                } else if (titles[index] == "Extra Charges") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExtraChargesPage()),
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          images[index],
                          width: 70,
                          height: 64,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2),
                        ),
                        Text(
                          titles[index],
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
