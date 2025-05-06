
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 440,
          width: 350,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20,
                  offset: Offset(0, 10),
                ),
              ],
              borderRadius: BorderRadius.circular(20)
            ),
            child: Stack(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                  ),
                ),

                Positioned(
                  top: 50,
                  right: 125,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(fit: BoxFit.cover, width: 100, height: 100,'https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg')),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 150, right: 20, left: 20),
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Jane Doe", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      Text("Senior Flutter Dev", style: TextStyle(color: Colors.black54),),
                      Text("Lorem ipsum dolor sit amet,consectet uradipiscing elit. Sed do eiusmod temporincididunt ut labore et dolore magna aliqua."),
                      SizedBox(
                        height: 50,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            InfoChip(text: 'React',),
                            SizedBox(width: 10,),
                            InfoChip(text: 'Flutter',),
                            SizedBox(width: 10,),
                            InfoChip(text: 'FastApi',),
                            SizedBox(width: 10,),
                            InfoChip(text: 'Backend',),
                            SizedBox(width: 10,),
                            InfoChip(text: 'Frontend',),
                          ],
                        ),
                      ),
                      SizedBox(height: 1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFFEDE7F6),
                              foregroundColor: Colors.deepPurple,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                            ),
                            child: const Text(
                              "Message",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),

                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.deepPurple,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: const BorderSide(color: Colors.deepPurple),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                            ),
                            child: const Text(
                              "Follow" ,
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      )
          
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class InfoChip extends StatelessWidget {
  final String text;
  InfoChip({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 13, right: 10, left: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFEDE7F6),
        border: Border.all(
          width: 1,
          color: Colors.black54
        ),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text(text),
    );
  }
}