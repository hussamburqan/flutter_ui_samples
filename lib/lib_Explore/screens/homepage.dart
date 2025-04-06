
import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/lib_Explore/component/hotel_card.dart';
import 'package:flutter_ui_samples/lib_Explore/repo/repo.dart';
import 'package:flutter_ui_samples/lib_Explore/style/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        appBar: AppBar(
          backgroundColor: Color(0xFFF6F6F6),
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
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),  
                                       
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'London',
                          style: style1,
                        ),
                      ),
                    )
                  ),
                  sizeW1,
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,2),
                          blurRadius: 5,
                          color: Colors.grey
                        )
                        
                        ],
                      borderRadius: BorderRadius.circular(20),
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
              padding: EdgeInsets.only(top:10, right: 10, left: 10, bottom: 16),
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
                      Text(
                        '12 Dec - 22 Dec', 
                        style: style1
                      ),
                    ],
                  ),
                  sizeW2,
                  SizedBox(
                    height: 50, 
                    child: VerticalDivider()
                  ),
              
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'number of room', 
                        style: style3
                      ),
                      Text(
                        '1 Room - 2 Adults', 
                        style: style1
                      ),
                    ],
                  ),
                  sizeW2,

                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16, right: 16, left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('530 hotels found', style: style1),
                          Row(
                            children: [
                              Text(
                                'Filter', 
                                style: style1,
                              ),
                              sizeH1,
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
                        padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 8 ),
                        child: ListView.builder(
                            itemCount: hotelModel.length,
                            itemBuilder: (context, index) {
                              return HotelCard(hotelModel[index]);
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