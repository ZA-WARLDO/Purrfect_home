import 'package:flutter/material.dart';
import 'package:purrfect/pages/appointment.dart';
import 'package:purrfect/pages/list_of_groom.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:purrfect/pages/myPet.dart';
import 'package:purrfect/services/serviceCard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 183, 3, 1),
      appBar: AppBar(
        elevation: 0,
        leading: Image.asset("assets/icons/UserProfile.png"),
        actions: [Image.asset("assets/icons/notification.png")],
        backgroundColor: Color.fromRGBO(255, 183, 3, 1),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Header(Name: "Brent"),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Expanded(child: Container(height: 40, decoration: BoxDecoration(color: Colors.white),)),
          // )
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: TextField(
                style: TextStyle(),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Search here...",
                    prefixIcon: Image.asset("assets/icons/search.png"))),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  ServiceCardLayout()
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/home.png",
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/appointment.png",
              ),
              label: "Appointment"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/Paws.png",
              ),
              label: "Home"),
        ],

      ),
    );
  }
}

// GestureDetector(
// child: Text("switch to home"),
// onTap: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => const list_of_groom()));
// }),

class Header extends StatelessWidget {
  String Name;

  Header({required this.Name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Text("Welcome,",
                style: GoogleFonts.nunito(
                    fontSize: 30, fontWeight: FontWeight.w400)),
            SizedBox(width: 10),
            Text(
              "Brent",
              style:
                  GoogleFonts.nunito(fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
