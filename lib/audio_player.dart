import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 352.0, 'auto-height': 190.0})
class AudioPlayer extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const AudioPlayer({super.key});

  @override
  State<AudioPlayer> createState() {
    return _AudioPlayerState();
  }
}

@NowaGenerated()
class _AudioPlayerState extends State<AudioPlayer> {
  AudioPlayerController? apc = AudioPlayerController(
      source: AudioSource(
          type: FileSourceType.network,
          path:
              'https://onlinetestcase.com/wp-content/uploads/2023/06/1-MB-MP3.mp3'));

  CrossFadeState? fadeSate = CrossFadeState.showFirst;

  @override
  void dispose() {
    super.dispose();
    apc?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NFlex(
      direction: Axis.vertical,
      spacing: 0.0,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FlexSizedBox(
          width: double.infinity,
          height: 40.0,
          child: NotifierBuilder(
            builder: (context) => NSlider(
              onChanged: (value) {
                apc?.seek(value.round());
              },
              thumbColor: const Color(0xff20262e),
              activeColor: const Color(0xff20262e),
              min: 0.0,
              value: apc!.position.inSeconds.toDouble(),
              max: apc?.duration.inSeconds.toDouble(),
            ),
            notifier: apc,
          ),
        ),
        FlexSizedBox(
          width: double.infinity,
          height: 23.0,
          child: NotifierBuilder(
            builder: (context) => Padding(
              padding: const EdgeInsets.only(
                left: 14.0,
                right: 14.0,
                top: 0.0,
                bottom: 0.0,
              ),
              child: NFlex(
                direction: Axis.horizontal,
                spacing: 0.0,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlexSizedBox(
                    width: 93.0,
                    height: 23.0,
                    child: Text(
                      apc!.position.getHHMMSSFormat,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                        color: const Color(0xff20262e),
                      ),
                    ),
                  ),
                  FlexSizedBox(
                    width: null,
                    height: null,
                    child: Text(
                      apc!.duration.getHHMMSSFormat,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                        color: const Color(0xff20262e),
                      ),
                    ),
                  )
                ],
              ),
            ),
            notifier: apc,
          ),
        ),
        FlexSizedBox(
          width: 232.0,
          height: 110.0,
          child: NFlex(
            direction: Axis.horizontal,
            spacing: 0.0,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlexSizedBox(
                width: null,
                height: null,
                child: IconButton(
                  onPressed: () {
                    if (apc!.position.inSeconds + -10 >= 10) {
                      apc?.seek(apc!.position.inSeconds + -10);
                    }
                  },
                  icon: const Icon(
                    IconData(983288, fontFamily: 'MaterialIcons'),
                    color: Color(0xff20262e),
                    size: 40.0,
                  ),
                  iconSize: 60.0,
                ),
              ),
              FlexSizedBox(
                width: 110.0,
                height: 110.0,
                child: AnimatedCrossFade(
                  firstChild: SizedBox(
                    child: IconButton(
                      onPressed: () {
                        apc?.play().then((value) {
                          fadeSate = CrossFadeState.showSecond;
                          setState(() {});
                        }, onError: (error) {
                          print('error:' + error!);
                        });
                      },
                      icon: const Icon(
                        IconData(983203, fontFamily: 'MaterialIcons'),
                        color: Color(0xff20262e),
                        size: null,
                      ),
                      iconSize: 95.0,
                    ),
                  ),
                  secondChild: IconButton(
                    onPressed: () {
                      apc?.pause().then((value) {
                        fadeSate = CrossFadeState.showFirst;
                        setState(() {});
                      }, onError: (error) {
                        print('error:' + error!);
                      });
                    },
                    icon: const Icon(
                      IconData(983124, fontFamily: 'MaterialIcons'),
                      color: Color(0xff20262e),
                    ),
                    iconSize: 95.0,
                  ),
                  crossFadeState: fadeSate!,
                  duration: const Duration(milliseconds: 200),
                ),
              ),
              FlexSizedBox(
                width: 56.0,
                height: null,
                child: IconButton(
                  onPressed: () {
                    if (apc!.position.inSeconds + 10 <=
                        apc!.duration.inSeconds) {
                      apc?.seek(apc!.position.inSeconds + 10);
                    }
                  },
                  icon: const Icon(
                    IconData(63390, fontFamily: 'MaterialIcons'),
                    color: Color(0xff20262e),
                    size: 40.0,
                  ),
                  iconSize: 60.0,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
