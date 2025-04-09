import 'package:flutter/material.dart';
import '../../models/hotel_model.dart';
import '../../style/styles.dart';

class HotelCard extends StatelessWidget {
  final HotelModel hotel;

  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 12, right: 8,left: 8),
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
                    ],
                  ),
                ),
                favoriteButton(),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
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
                horizontal: 15,
              ),
              child: Row(
                children: [
                  Text('${hotel.location}', style: style3),
                  sizedBoxW5,
                  Icon(
                    Icons.location_on,
                    color: Color(0xFF56D4C5),
                    size: 20,
                  ),
                  Text("${hotel.distance} to city center", style: style3),
                  Expanded(child: SizedBox()),
                  Text("/per night", style: style4),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
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
                  sizedBoxW5,
                  Text('${hotel.reviews} Reviews', style: style3,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class favoriteButton extends StatefulWidget {
  const favoriteButton({super.key});

  @override
  State<favoriteButton> createState() => _favoriteButtonState();
}

class _favoriteButtonState extends State<favoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top: 15,
      right: 15,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        child: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Color(0xFF56D4C5)
          ),
        ),
      ),
    );
  }
}



