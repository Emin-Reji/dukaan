import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBar(
          centerTitle: true,
          title: Text(
            'Additional Information',
            style: GoogleFonts.montserrat(
              fontSize: 18,
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
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
        child: Column(
          children: [
            // First set of icon and text
            Row(
              children: [
                Icon(Icons.share_outlined),
                SizedBox(width: 15),
                Text(
                  'Share Dukaan App',
                  style: GoogleFonts.montserrat(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(width: 140),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(height: 20), 
            Row(
              children: [
                Icon(Icons.translate_sharp),
                SizedBox(width: 15),
                Text(
                  'Change Language',
                  style: GoogleFonts.montserrat(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(width: 140),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(height: 20), 
            
            Row(
              children: [
                Icon(Icons.message_outlined),
                SizedBox(width: 15),
                Text(
                  'WhatsApp Chat Support',
                  style: GoogleFonts.montserrat(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(width: 50),
                Switch(
                  value: true, // Set the initial value of the switch
                  onChanged: (bool value) {
                    // Handle the toggle action
                    print("Switch toggled: $value");
                  },
                  activeColor: Color.fromARGB(
                      255, 21, 100, 165), // Customize the active color
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.lock_outline),
                SizedBox(width: 15),
                Text(
                  'Privacy Policy',
                  style: GoogleFonts.montserrat(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.star_outline),
                SizedBox(width: 15),
                Text(
                  'Rate Us',
                  style: GoogleFonts.montserrat(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.logout),
                SizedBox(width: 15),
                Text(
                  'Sign Out',
                  style: GoogleFonts.montserrat(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
            SizedBox(height: 320),
            Row(
              children: [
                SizedBox(width: 150),
                Text(
                  'Version',
                  style: GoogleFonts.montserrat(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 190, 190, 190),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(width: 160),
                Text(
                  '2.4.2',
                  style: GoogleFonts.montserrat(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 190, 190, 190),
                  ),
                ),
              ],
            )
            // Add more sets as needed
          ],
        ),
      ),
    );
  }
}
