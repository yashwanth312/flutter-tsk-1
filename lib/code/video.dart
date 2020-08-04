import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

final videoPlayerController = VideoPlayerController.network(
    "https://musicbucket4578.s3.ap-south-1.amazonaws.com/AZVZ8617.MP4",
    formatHint: VideoFormat.other);

final chewieController = ChewieController(
    videoPlayerController: videoPlayerController,
    aspectRatio: 3 / 2,
    autoPlay: true,
    looping: true);
