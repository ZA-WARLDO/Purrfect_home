import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:purrfect/pages/home.dart';
import 'package:purrfect/pages/list_of_groom.dart';
import 'package:purrfect/pages/list_of_vet.dart';
import 'package:shadow/shadow.dart';

class ServiceCard extends StatelessWidget {
  late String name;
  String type;
  String subtitle;
  String logo;

  ServiceCard(
      {super.key,
      required this.name,
      required this.type,
      required this.subtitle,
      required this.logo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Shadow(
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                offset: Offset(4, 4),
                blurRadius: 5),
          ]),
          height: 110,
          child: Card(
            elevation: 1,
            borderOnForeground: true,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/icons/${this.logo}"),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        this.name,
                        style: GoogleFonts.nunito(
                            fontSize: 17,
                            color: Color.fromRGBO(57, 72, 136, 1),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        this.type,
                        style: GoogleFonts.nunito(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        this.subtitle,
                        style: GoogleFonts.nunito(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.topRight,
                      child: Image.asset("assets/icons/stars.png")),
                ],
              ),
            ),
          ),
        ),
      ),

    );

  }
}

class ServiceCardLayout extends StatelessWidget {
  const ServiceCardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderService(typeOfService: "Veterninary Clinics", isVet: true),
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
        HeaderService(typeOfService: "Pet Grooming Center", isVet: false),
        ServiceCard(
            name: "Poochie",
            type: "Pet Groomer Center",
            subtitle: "9:00 AM - 5:00 PM",
            logo: "VetPic (1).png"),
        ServiceCard(
            name: "Poochie",
            type: "Pet Groomer Center",
            subtitle: "9:00 AM - 5:00 PM",
            logo: "VetPic (1).png"),
        ServiceCard(
            name: "Poochie",
            type: "Pet Groomer Center",
            subtitle: "9:00 AM - 5:00 PM",
            logo: "VetPic (1).png"),
      ],
    );
  }
}

class HeaderService extends StatelessWidget {
  String typeOfService;
  bool isVet;

  HeaderService({required this.typeOfService, required this.isVet});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            typeOfService,
            style:
                GoogleFonts.nunito(fontSize: 21.7, fontWeight: FontWeight.w700),
            textAlign: TextAlign.start,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                if (isVet == true) {
                  return const list_of_vet();
                } else {
                  return const list_of_groom();
                }
              }),
            ),
            child: Text(
              "See All",
              style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              textAlign: TextAlign.start,
            ),
          )
        ],

      ),
    );
  }
}
