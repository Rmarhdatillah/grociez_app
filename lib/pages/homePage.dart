import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceriesapp/pages/detailProduct.dart';
import 'package:groceriesapp/widgets/ddLocation.dart';
import 'package:groceriesapp/widgets/groceriesCard.dart';
import 'package:groceriesapp/widgets/productCard.dart';
import 'package:groceriesapp/widgets/search.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Image.asset("images/wortel.png"),
              //dari sini
              Container(
                // color: Colors.amber,
                margin: EdgeInsets.fromLTRB(25, 0, 25, 10),
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    location(),
                    search(),
                    SizedBox(height: 20),
                    Container(
                      height: 114.99,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset("images/promo.png"),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exclusive Offer",
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "See all",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Color(0xff53B175),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          productCard(
                            name: "Organic Bananas",
                            image: "images/banana.png",
                            description: "7pcd. Priceg",
                            price: "Rp.29.999-,",
                            ontapCard: () {},
                          ),
                          SizedBox(width: 15),
                          productCard(
                            name: "Red Apple",
                            image: "images/apple.png",
                            description: "1kg. Priceg",
                            price: "Rp.29.999-,",
                            ontapCard: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return detailPproduct();
                                }),
                              );
                            },
                          ),
                          SizedBox(width: 15),
                          productCard(
                            name: "Bell Pepper Red",
                            image: "images/bellpapper.png",
                            description: "7pcd. Priceg",
                            price: "Rp.29.999-,",
                            ontapCard: () {},
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Best Selling",
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "See all",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Color(0xff53B175),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          productCard(
                            name: "Ginder",
                            image: "images/ginder.png",
                            description: "1kg. Priceg",
                            price: "Rp.29.999-,",
                            ontapCard: () {},
                          ),
                          SizedBox(width: 15),
                          productCard(
                            name: "Bell Pepper Red",
                            image: "images/bellpapper.png",
                            description: "1kg. Priceg",
                            price: "Rp.29.999-,",
                            ontapCard: () {},
                          ),
                          SizedBox(width: 15),
                          productCard(
                            name: "Organic Bananas",
                            image: "images/banana.png",
                            description: "7pcd. Priceg",
                            price: "Rp.29.999-,",
                            ontapCard: () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Groceries",
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "See all",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Color(0xff53B175),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          groceriesCard(
                            name: "Pulses",
                            image: "images/pulses.png",
                            color: Color(0xffFEF2E4),
                            ontap: () {},
                          ),
                          SizedBox(width: 15),
                          groceriesCard(
                            name: "Rice",
                            image: "images/rice.png",
                            color: Color(0xffE5F4EB),
                            ontap: () {},
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    )
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
