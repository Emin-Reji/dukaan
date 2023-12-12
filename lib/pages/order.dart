import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          centerTitle: true,
          title: Text(
            'Order #1688068',
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 21, 100, 165),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(7),
            child: Row(
              children: [
                Text(
                  'May 31, 05.42 PM',
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 81, 80, 80),
                  ),
                ),
                SizedBox(width: 120),
                Icon(
                  Icons.circle_sharp,
                  size: 12,
                  color: const Color.fromARGB(255, 21, 100, 165),
                ),
                SizedBox(width: 10),
                Text(
                  'Delivered',
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 115, 115, 115),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1,
            child: Container(
              color: const Color.fromARGB(255, 129, 129, 129),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(7),
                child: Text(
                  ' 1 ITEM',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(width: 225),
              Icon(Icons.receipt_long_rounded),
              Text(
                '  RECEIPT',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 21, 100, 165),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 164, 164, 164),
                    width: 1.0, // Adjusted border width
                  ),
                ),
                child: Image.asset(
                  "lib/images/T1.png",
                  width: 120,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(1, 15, 55, 55),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '  Explore | Men | Black',
                      style: GoogleFonts.montserrat(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 24, 24, 24)),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '  1 piece',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 24, 24, 24)),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '  Size: XL',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 24, 24, 24)),
                    ),
                    SizedBox(height: 5),
                    
                    Row(
                      children: [
                        SizedBox(width: 6,),
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                color: const Color.fromARGB(255, 8, 66, 114),
                                width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            'x1',
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 2, 24, 43),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Row(
                          children: [
                            Text(
                              'x799',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 2, 24, 43),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(width: 100,),
                                Text('₹799',style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 2, 24, 43),
                              ),)
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1,
            child: Container(
              color: const Color.fromARGB(255, 129, 129, 129),
            ),
          ),
          SizedBox(height: 7),
          Row(
            children: [
              SizedBox(height: 10, width: 10),
              Text(
                'Item Total',
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 250,
              ),
              Text(
                '    ₹799',
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              )
            ],
          ),
          SizedBox(height: 7),
          Row(
            children: [
              Text(
                '   Delivery',
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(width: 250),
              Text(
                '       FREE',
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              )
            ],
          ),
          SizedBox(height: 7),
          Row(
            children: [
              Text(
                '  Grand Total',
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(width: 200),
              Text(
                '        ₹799',
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 29, 30, 29)),
              )
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 1,
            child: Container(
              color: const Color.fromARGB(255, 129, 129, 129),
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(height: 15),
              Text(
                '  CUSTOMER DETAILS',
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 103, 103, 103)),
              ),
              SizedBox(width: 105),
              Icon(
                Icons.share,
                color: Color.fromARGB(255, 21, 100, 165),
              ),
              SizedBox(width: 5),
              Text(
                'SHARE',
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 21, 100, 165)),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(height: 10),
              Text(
                '  Deepa',
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(width: 245),
              Image.asset("lib/images/phone.jpg", width: 30, height: 50),
              Image.asset("lib/images/whatsapp-6273368_1280.png",
                  width: 30, height: 50)
            ],
          ),
          Row(
            children: [
              Text(
                '  +91-7829000484',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 79, 79, 79),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(height: 10),
              Text(
                '  Additional Contact:',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 79, 79, 79),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(height: 5),
              Text(
                '  +91-9876543210',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 79, 79, 79),
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Text(
                '  \n  Address:',
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 27, 27, 27)),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(height: 5),
              Text(
                '  D 1101 Chartered Beverly\n  Hills,Subramanyapura P.O',
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 79, 79, 79)),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(height: 5),
              Text(
                ' \n  City ',
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 27, 27)),
              ),
              SizedBox(width: 150),
              Text(
                '\nPincode',
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 27, 27)),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(height: 5),
              Text(
                '  Bangalore',
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 79, 79, 79)),
              ),
              SizedBox(width: 100),
              Text(
                '    560061',
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 79, 79, 79)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
