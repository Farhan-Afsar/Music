import 'package:flutter/material.dart';

import 'song.dart';

class PlaylistProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    Song(
      songName: "Is Qadr",
      artistName: "Darshan Raval",
      albumArtImagePath: "assets/images/img1.jpeg",
      audioPath: "assets/audio/song1.mp3",
    ),
    Song(
      songName: "Mayabi",
      artistName: "Ahamed Zaki",
      albumArtImagePath: "assets/images/img2.jpeg",
      audioPath: "assets/audio/song2.mp3",
    ),
    Song(
      songName: "Upo",
      artistName: "Ankan Kumar",
      albumArtImagePath: "assets/images/img3.jpeg",
      audioPath: "assets/audio/song1.mp3",
    ),
  ];

  int? _currentSongIndex;

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  set currentSongIndex(int? newIndex) {
    _currentSongIndex = newIndex;

    notifyListeners();
  }
}
