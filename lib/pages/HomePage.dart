import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dukaan/pages/Payments.dart';
import 'package:dukaan/pages/ExtraChargesPage.dart';
import 'package:dukaan/pages/Catalogue.dart';
import 'package:dukaan/pages/AdditionalInfo.dart';
import 'package:dukaan/pages/order.dart';

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
    "Marketing\nDesigns",
    "Online\nPayments",
    "Discount\nCoupons",
    "My\nCustomers",
    "Store QR\nCodes",
    "Extra\nCharges",
    "Order\nform"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 216, 216),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdditionalInfo()),
              );
            },
          ),
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
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
          ),
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                if (titles[index] == "Online\nPayments") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Payments()),
                  );
                } else if (titles[index] == "Extra\nCharges") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExtraChargesPage()),
                  );
                } else if (titles[index] == "Order\nform") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderPage()),
                  );
                } else if (titles[index] == "My\nCustomers") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Catalogue()),
                  );
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Image.asset(
                          images[index],
                          width: 70,
                          height: 54,
                          alignment: Alignment.centerLeft,
                        ),
                        if (titles[index] == "Order\nform")
                          Row(
                            children: [
                              SizedBox(width: 125),
                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'NEW',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              )
                            ],
                          ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 8,bottom: 5),
                      child: Text(
                        titles[index],
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
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
