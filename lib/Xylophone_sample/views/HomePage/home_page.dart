import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF567F98),
        centerTitle: true ,
        title: Text('Xylophone_assets_app',style: TextStyle(color: Color(0xFFA6C5E2)),),
      ),
      body: Column(
        children: [
          MusicCard(color: Colors.red, path: 'assets/Xylophone_assets_app/audio/note1.wav',),
          MusicCard(color: Colors.orange, path: 'assets/Xylophone_assets_app/audio/note2.wav'),
          MusicCard(color: Colors.yellow, path: 'assets/Xylophone_assets_app/audio/note3.wav'),
          MusicCard(color: Colors.green, path: 'assets/Xylophone_assets_app/audio/note4.wav'),
          MusicCard(color: Colors.blue, path: 'assets/Xylophone_assets_app/audio/note5.wav'),
          MusicCard(color: Colors.purple, path: 'assets/Xylophone_assets_app/audio/note6.wav'),
          MusicCard(color: Colors.pink, path: 'assets/Xylophone_assets_app/audio/note7.wav'),
        ],
      ),
    );
  }
}

class MusicCard extends StatelessWidget {
  final Color color;
  final String path;

  const MusicCard({super.key, required this.color, required this.path});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
            final player = AudioPlayer();
            await player.setAsset(path);
            await player.play();
            player.dispose();
          },
        child: Container(
          color: color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.circle, color: Colors.white70),
              sizedBoxW20,
              Icon(Icons.circle, color: Colors.white70),
            ],
          ),
        ),
      ),
    );
  }
}

const SizedBox sizedBoxW20 = SizedBox(width: 10);
