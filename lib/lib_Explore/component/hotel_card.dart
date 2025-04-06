import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/lib_Explore/models/hotel_model.dart';
import 'package:flutter_ui_samples/lib_Explore/style/styles.dart';

Widget HotelCard(HotelModel hotel) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0,7), 
            blurRadius: 5, 
            color: const Color.fromARGB(101, 161, 161, 161)
          ),
        ],
      ),
      height: 300,
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: AssetImage(hotel.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text(hotel.name, style: style2),
                          Text("\$${hotel.price}", style: style2),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Row(
                        children: [
                          Text(hotel.location, style: style3),
                          Icon(
                            Icons.location_on,
                            color: Color(0xFF56D4C5),
                            size: 20,
                          ),
                          Text("${hotel.distance} to city center", style: style3),
                          Expanded(child: SizedBox()),
                          Text("/per night", style: style3),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            hotel.starReviews >= 1
                                ? Icons.star
                                : Icons.star_border,
                            color: Color(0xFF56D4C5),
                          ),
                          Icon(
                            hotel.starReviews >= 2
                                ? Icons.star
                                : Icons.star_border,
                            color: Color(0xFF56D4C5),
                          ),
                          Icon(
                            hotel.starReviews >= 3
                                ? Icons.star
                                : Icons.star_border,
                            color: Color(0xFF56D4C5),
                          ),
                          Icon(
                            hotel.starReviews >= 4
                                ? Icons.star
                                : Icons.star_border,
                            color: Color(0xFF56D4C5),
                          ),
                          Icon(
                            hotel.starReviews == 5
                                ? Icons.star
                                : Icons.star_border,
                            color: Color(0xFF56D4C5),
                          ),
                          Text('${hotel.reviews} Reviews', style: style3,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 15,
                right: 15,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.favorite_border, color: Color(0xFF56D4C5)),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
