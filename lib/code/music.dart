import 'package:audioplayers/audioplayers.dart';

var track = AudioPlayer();
track1play() {
  track.play(
      "https://musicbucket4578.s3.ap-south-1.amazonaws.com/Besabriyaan+(MS+Dhoni+-+The+Untold+Story)+(4).mp3");
}

track1pause() {
  track.pause();
}
