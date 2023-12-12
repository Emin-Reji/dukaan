import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Catalogue extends StatelessWidget {
  const Catalogue({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 205, 205, 205),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100), // Adjust the preferredSize as needed
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 21, 100, 165),
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 16),
              Text(
                'Catalogue',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              SizedBox(height: 8),
              PreferredSize(
                preferredSize: Size.fromHeight(40),
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Products',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Categories',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                // Add your action when the search icon is pressed
                print("Search icon pressed");
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                width: 450,
                height: 179,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 239, 237, 237),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("lib/images/book.png", width: 100, height: 100),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 1, right: 25),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Cool Book | kids',
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.montserrat(
                                              fontSize: 19,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(255, 53, 53, 53),
                                            ),
                                          ),
                                          SizedBox(width: 35,),
                                          IconButton(
                                            icon: Icon(Icons.more_vert, color: Colors.black),
                                            onPressed: () {
                                              // Add your action for the overflow menu in the row
                                              print("Overflow menu in row pressed");
                                            },
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 1),
                                        child: Text(
                                          '1 piece',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromARGB(255, 53, 53, 53),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 1),
                                        child: Text(
                                          '₹686.42',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(255, 53, 53, 53),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'In stock  ',
                                              //textAlign: TextAlign.start,
                                              style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.green,
                                              ),
                                            ),
                                            SizedBox(width: 110,),
                                            Switch(
                                              value: true, // Set the initial value of the switch
                                              onChanged: (bool value) {
                                                // Handle the toggle action
                                                print("Switch toggled: $value");
                                              },
                                              activeColor: Color.fromARGB(255, 21, 100, 165), // Customize the active color
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1,),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Color.fromARGB(255, 184, 184, 184),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        SizedBox(width: 110,),
                        Icon(Icons.share),
                        SizedBox(width: 5,),
                        Text("Share Product",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 450,
                height: 179,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 239, 237, 237),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("lib/images/T1.png", width: 100, height: 100),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 1, right: 25),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Full Black | Tees',
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.montserrat(
                                              fontSize: 19,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(255, 53, 53, 53),
                                            ),
                                          ),
                                          SizedBox(width: 38,),
                                          IconButton(
                                            icon: Icon(Icons.more_vert, color: Colors.black),
                                            onPressed: () {
                                              // Add your action for the overflow menu in the row
                                              print("Overflow menu in row pressed");
                                            },
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 1),
                                        child: Text(
                                          '1 piece',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromARGB(255, 53, 53, 53),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 1),
                                        child: Text(
                                          '₹799',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(255, 53, 53, 53),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'In stock  ',
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.green,
                                              ),
                                            ),
                                            SizedBox(width: 110,),
                                            Switch(
                                              value: true, // Set the initial value of the switch
                                              onChanged: (bool value) {
                                                // Handle the toggle action
                                                print("Switch toggled: $value");
                                              },
                                              activeColor: Color.fromARGB(255, 21, 100, 165), // Customize the active color
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2,),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Color.fromARGB(255, 184, 184, 184),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        SizedBox(width: 110,),
                        Icon(Icons.share),
                        SizedBox(width: 5,),
                        Text("Share Product",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 450,
                height: 177,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 239, 237, 237),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("lib/images/mug.png", width: 90, height: 90),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 1, right: 25),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Red Mug | Gloss',
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.montserrat(
                                              fontSize: 19,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(255, 53, 53, 53),
                                            ),
                                          ),
                                          SizedBox(width: 45,),
                                          IconButton(
                                            icon: Icon(Icons.more_vert, color: Colors.black),
                                            onPressed: () {
                                              // Add your action for the overflow menu in the row
                                              print("Overflow menu in row pressed");
                                            },
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 1),
                                        child: Text(
                                          '1 piece',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromARGB(255, 53, 53, 53),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 1),
                                        child: Text(
                                          '₹397.4',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(255, 53, 53, 53),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'In stock    ',
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.green,
                                              ),
                                            ),
                                            SizedBox(width: 110,),
                                            Switch(
                                              value: true, // Set the initial value of the switch
                                              onChanged: (bool value) {
                                                // Handle the toggle action
                                                print("Switch toggled: $value");
                                              },
                                              activeColor: Color.fromARGB(255, 21, 100, 165), // Customize the active color
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0,),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Color.fromARGB(255, 184, 184, 184),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        SizedBox(width: 110,),
                        Icon(Icons.share),
                        SizedBox(width: 5,),
                        Text("Share Product",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 450,
                height: 177,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 239, 237, 237),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("lib/images/game.png", width: 80, height: 100),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 1, right: 25),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Game DCV | S7',
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.montserrat(
                                              fontSize: 19,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(255, 53, 53, 53),
                                            ),
                                          ),
                                          SizedBox(width: 69,),
                                          IconButton(
                                            icon: Icon(Icons.more_vert, color: Colors.black),
                                            onPressed: () {
                                              // Add your action for the overflow menu in the row
                                              print("Overflow menu in row pressed");
                                            },
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 1),
                                        child: Text(
                                          ' 1 piece',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromARGB(255, 53, 53, 53),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 1),
                                        child: Text(
                                          ' ₹1123.5',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(255, 53, 53, 53),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:0),
                                        child: Row(
                                          children: [
                                            Text(
                                              ' In stock     ',
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.green,
                                              ),
                                            ),
                                            SizedBox(width: 110,),
                                            Switch(
                                              value: true, // Set the initial value of the switch
                                              onChanged: (bool value) {
                                                // Handle the toggle action
                                                print("Switch toggled: $value");
                                              },
                                              activeColor:Color.fromARGB(255, 21, 100, 165), // Customize the active color
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2,),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Color.fromARGB(255, 184, 184, 184),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        SizedBox(width: 110,),
                        Icon(Icons.share),
                        SizedBox(width: 5,),
                        Text("Share Product",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),)
                      ],
                    ),
                  ],
                ),
              ),
            ],
            
          ),
        ),
      ),
    );
  }
}
