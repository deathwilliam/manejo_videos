import 'package:flutter/material.dart';
import 'package:manejo_videos/domain/entities/video_post.dart';
import 'package:manejo_videos/presentation/widgets/shared/video_buttons.dart';
import 'package:manejo_videos/presentation/widgets/video/fullscreen_player.dart';
import 'package:manejo_videos/shared/data/local_video_posts.dart';

class VideoScrollableView extends StatelessWidget {
   final List<VideoPost> videos;
  const VideoScrollableView({
    super.key,
    required this.videos
    
    });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics() ,
      itemCount: videos.length,
      itemBuilder: (context, index) {
      final VideoPost videoPosts = videos[index];

      return Stack(
      children: [
        //Video Player
          SizedBox.expand(
            child: FullScreenPlayer(
              caption: videoPosts.caption,
              videoUrl: videoPosts.videoUrl,
              )
            
          ),

        //botones
        Positioned(
          bottom: 40,
          right: 20,
          child: VideoButtons(video:videoPosts)
        )
        
        
        ],
        );
       },
    );
  }
}