
import 'package:flutter/material.dart';

import '../../models/hotel_model.dart';
import '../../style/styles.dart';
import 'hotel_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Explore",
            style: style2,
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
            Icon(
              Icons.favorite_border,
              size: 35,
            ),
            SizedBox(width: 5,),
            Icon(
              Icons.location_on,
              size: 35,
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Text(
                          'London',
                          style: style1,
                        ),
                      ),
                    )
                  ),
                  sizedBoxW10,
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,2),
                          blurRadius: 5,
                          color: Colors.grey
                        )
                        ],
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF56D4C5),
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15, left: 15, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Choose date',
                        style: style3
                      ),
                      sizedBoxH5,
                      Text(
                        '12 Dec - 22 Dec',
                        style: style1
                      ),
                    ],
                  ),
                  sizedBoxW35,
                  SizedBox(
                    height: 50,
                    child: VerticalDivider()
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Number of Room',
                        style: style3
                      ),
                      sizedBoxH5,
                      Text(
                        '1 Room - 2 Adults',
                        style: style1
                      ),
                    ],
                  ),
                  sizedBoxW35,

                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5, right: 16, left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('530 hotels found', style: style1),
                          Row(
                            children: [
                              Text(
                                'Filters',
                                style: style1,
                              ),
                              sizedBoxH10,
                              IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  Icons.sort,
                                  size: 30,
                                ),
                                color: Color(0xFF56D4C5),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListView.builder(
                            itemCount: hotels.length,
                            itemBuilder: (context, index) {
                              return hotelCard(hotel: hotels[index]);
                            },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}