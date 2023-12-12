import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key});

  @override
  Widget build(BuildContext context) {
    double progressValue = 0.3;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          centerTitle: true,
          title: Text(
            'Payments',
            style: GoogleFonts.montserrat(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 217,
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 244, 244),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Color.fromARGB(255, 147, 139, 139)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Transaction Limit",
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "A free limit up to which you will receive\nthe online payments directly in your bank",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 142, 142, 142),
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 5,
                        child: LinearProgressIndicator(
                          value: progressValue,
                          color: const Color.fromARGB(255, 21, 100, 165),
                          backgroundColor: Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "36,668 left out of ₹50,000",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 134, 134, 134),
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 21, 100, 165),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                        ),
                        child: Text(
                          "Increase Limit",
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 5),
          ),
          SliverToBoxAdapter(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Text(
                  'Default Method',
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(width: 22, height: 15),
                Expanded(
                  child: Text(
                    'Online Payments',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 143, 143, 143)),
                  ),
                ),
                Icon(Icons.arrow_right,
                    color: const Color.fromARGB(255, 0, 0, 0), size: 40.0),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),
          SliverToBoxAdapter(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Text(
                  'Payment profile',
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(width: 22, height: 25),
                Expanded(
                  child: Text(
                    'Bank Accounts',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 143, 143, 143)),
                  ),
                ),
                Icon(Icons.arrow_right,
                    color: const Color.fromARGB(255, 0, 0, 0), size: 40.0),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 1.0),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 2.0,
              color: Color.fromARGB(255, 149, 149, 149),
              width: 400.0,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 5),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                SizedBox(width: 10),
                Text('Payments overview ',
                    style: GoogleFonts.montserrat(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                SizedBox(width: 22, height: 25),
                Expanded(
                  child: Text(
                    'Life Time',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 143, 143, 143)),
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.arrow_drop_down,
                    color: const Color.fromARGB(255, 0, 0, 0), size: 40.0),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 5),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                SizedBox(width: 20),
                Container(
                  height: 100,
                  width: 165,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(221, 233, 108, 6),
                  ),
                  child: Column(
                    children: [
                      Text('\nAMOUNT ON HOLD',
                          style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                      SizedBox(height: 10),
                      Expanded(
                          child: Text('₹0',
                              style: GoogleFonts.montserrat(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 100,
                  width: 165,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 68, 185, 1),
                  ),
                  child: Column(
                    children: [
                      Text('\nAMOUNT RECEIVED',
                          style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                      SizedBox(height: 10),
                      Expanded(
                        
                          child: Text('₹13,332',
                              style: GoogleFonts.montserrat(
                                  fontSize: 22,
                                  
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                SizedBox(height: 20, width: 10),
                Text('Transactions',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                SizedBox(width: 15),
                Container(
                  width: 80,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(18)),
                  child: Center(
                      child: Text('On hold',
                          style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color:
                                  const Color.fromARGB(255, 255, 255, 255)))),
                ),
                SizedBox(width: 25),
                Container(
                  width: 120,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 1, 100, 161),
                      borderRadius: BorderRadius.circular(18)),
                  child: Center(
                      child: Text('Payouts(15)',
                          style: GoogleFonts.montserrat(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color:
                                  const Color.fromARGB(255, 255, 255, 255)))),
                ),
                SizedBox(width: 25),
                Container(
                  width: 80,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(18)),
                  child: Center(
                      child: Text('Refunds',
                          style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color:
                                  const Color.fromARGB(255, 255, 255, 255)))),
                ),
              ],
            ),
          ),
          //order start
          SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 93,
                    width: 392.5,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'lib/images/T1.png',
                          width: 80,
                          height: double.infinity,
                          alignment: Alignment.topLeft,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(1, 1, 5, 38),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order #1688068',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 1),
                                Text(
                                  'Jul 12, 02:06 PM',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '₹799 deposited to 588602000138',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 7.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(89, 1, 1, 38),
                            child: Column(
                              children: [
                                Text(
                                  '₹799',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle_sharp,
                                      size: 10,
                                      color: Colors.green,
                                    ),
                                    Text(
                                      'Successful',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 392.5,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'lib/images/mug.jpg',
                          width: 55,
                          height: double.infinity,
                          alignment: Alignment.topLeft,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(1, 1, 5, 38),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 7, width: 5),
                                Text(
                                  '     Order #1457741',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 1),
                                Text(
                                  '      Apr 26, 07:47 AM',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '       ₹397 deposited to 588602000138',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 7.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(89, 1, 1, 38),
                            child: Column(
                              children: [
                                Text(
                                  '  ₹397.4',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle_sharp,
                                      size: 10,
                                      color: Colors.green,
                                    ),
                                    Text(
                                      '    Successful',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 392.5,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'lib/images/book.png',
                          width: 70,
                          height: double.infinity,
                          alignment: Alignment.topLeft,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(1, 1, 5, 38),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 7,),
                                Text(
                                  '  Order #1408896',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 1),
                                Text(
                                  '  Apr 11, 10:54 AM',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '  ₹686 deposited to 588602000138',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 7.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(89, 1, 1, 38),
                            child: Column(
                              children: [
                                Text(
                                  '₹686.42',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle_sharp,
                                      size: 10,
                                      color: Colors.green,
                                    ),
                                    Text(
                                      ' Successful',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 392.5,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'lib/images/game.png',
                          width: 80,
                          height: double.infinity,
                          alignment: Alignment.topLeft,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(1, 1, 5, 38),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '  Order #1369633',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 1),
                                Text(
                                  '  Apr 2, 11:29 AM',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '  ₹1123 deposited to 58860200138',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 7.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(89, 1, 1, 38),
                            child: Column(
                              children: [
                                Text(
                                  '₹1123.5',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle_sharp,
                                      size: 10,
                                      color: Colors.green,
                                    ),
                                      Text(
                                     'Successful',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    
  }
}
       