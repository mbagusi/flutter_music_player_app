import 'package:flutter/material.dart';
import 'package:music_player/widgets/list_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MusicPlayer(),
    );
  }
}

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  List music = [
    {
      'title': "Deep Urban",
      'singer': "Eugenio Mininni",
      'url': "https://assets.mixkit.co/music/preview/mixkit-deep-urban-623.mp3",
      'coverUrl':
          "https://pbs.twimg.com/profile_images/596732918090850304/wdbwcSjQ_400x400.jpg"
    },
    {
      'title': "Serene View",
      'singer': "Arulo",
      'url':
          "https://assets.mixkit.co/music/preview/mixkit-serene-view-443.mp3",
      'coverUrl':
          "https://i1.sndcdn.com/avatars-000004646985-utdf5f-t500x500.jpg"
    },
    {
      'title': "Comical",
      'singer': "Ahjay Stelino",
      'url': "https://assets.mixkit.co/music/preview/mixkit-comical-2.mp3",
      'coverUrl':
          "https://pbs.twimg.com/profile_images/1139280552677167104/qUhMRgLU_400x400.png"
    },

    {
      'title': "Relaxing in Nature",
      'singer': "Diego Nava",
      'url': "https://assets.mixkit.co/music/preview/mixkit-relaxing-in-nature-522.mp3",
      'coverUrl': "https://i1.sndcdn.com/avatars-000042074985-zo8rh6-t500x500.jpg"
    },

    {
      'title': "Hip Hop 02",
      'singer': "Lily J",
      'url': "https://assets.mixkit.co/music/preview/mixkit-hip-hop-02-738.mp3",
      'coverUrl': "https://i1.sndcdn.com/avatars-000042293689-rcdbzo-t240x240.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "My Playlist",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: music.length,
                itemBuilder: (context, index) => listTileCustom(
                      title: music[index]['title'],
                      singer: music[index]['singer'],
                      cover: music[index]['coverUrl'],
                    )),
          ),
          Container(),
        ],
      ),
    );
  }
}
