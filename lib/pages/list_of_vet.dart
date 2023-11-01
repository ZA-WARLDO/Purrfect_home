import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:purrfect/services/serviceCard.dart';
import "package:flutter/src/widgets/navigator.dart";

class list_of_vet extends StatefulWidget {
  const list_of_vet({super.key});

  @override
  State<list_of_vet> createState() => _list_of_vetState();
}

class _list_of_vetState extends State<list_of_vet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context),
            icon: Image.asset("assets/icons/backButton.png")),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/listOfVet.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: Text("Veterinary Clinic",
                  style: GoogleFonts.nunito(
                      fontSize: 30, fontWeight: FontWeight.w700)),
            ),
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
                    ServiceCard(
                        name: "KHO Veterinary Clinic",
                        subtitle: "Always Open 24/7",
                        type: "Veterinary Clinic",
                        logo: "VetPic.png"),
                    ServiceCard(
                        name: "KHO Veterinary Clinic",
                        subtitle: "Always Open 24/7",
                        type: "Veterinary Clinic",
                        logo: "VetPic.png"),
                    ServiceCard(
                        name: "KHO Veterinary Clinic",
                        subtitle: "Always Open 24/7",
                        type: "Veterinary Clinic",
                        logo: "VetPic.png"),
                    ServiceCard(
                        name: "KHO Veterinary Clinic",
                        subtitle: "Always Open 24/7",
                        type: "Veterinary Clinic",
                        logo: "VetPic.png"),
                    ServiceCard(
                        name: "KHO Veterinary Clinic",
                        subtitle: "Always Open 24/7",
                        type: "Veterinary Clinic",
                        logo: "VetPic.png"),
                    ServiceCard(
                        name: "KHO Veterinary Clinic",
                        subtitle: "Always Open 24/7",
                        type: "Veterinary Clinic",
                        logo: "VetPic.png"),
                    ServiceCard(
                        name: "KHO Veterinary Clinic",
                        subtitle: "Always Open 24/7",
                        type: "Veterinary Clinic",
                        logo: "VetPic.png"),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/home.png",
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/appointment.png"), label: "appointment"),
          BottomNavigationBarItem(icon: Image.asset("assets/icons/Paws.png",), label: "MyPets")
        ],
      ),
    );
  }
}
