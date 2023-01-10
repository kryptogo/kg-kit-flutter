import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KgCarousel extends StatefulWidget {
  const KgCarousel(
      {Key? key,
      this.items = const <String>[],
      this.autoplay = true,
      this.showNextButton = false,
      this.widgetWhenDone})
      : super(key: key);

  final List items;
  final bool autoplay, showNextButton;
  final Widget?
      widgetWhenDone; // this widget shows when 1) showNextButton is true, and 2) everything in the carousel has been seen.

  @override
  State<KgCarousel> createState() => _KgCarouselState();
}

class _KgCarouselState extends State<KgCarousel> {
  final CarouselController _controller = CarouselController();

  int _current = 0;
  bool hasSeenEverything = false;

  @override
  Widget build(BuildContext context) {
    if (!widget.showNextButton || !hasSeenEverything) {
      return Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const Spacer(),
            CarouselSlider(
              items: widget.items
                  .map(
                    (e) => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 48),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            e[0],
                            width: 166,
                          ),
                          const SizedBox(height: 24),
                          Text(
                            e[1],
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            e[2],
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
              carouselController: _controller,
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height - 2 * 24 - 300,
                  autoPlay: widget.autoplay,
                  autoPlayInterval: const Duration(seconds: 3),
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(widget.items.length, (index) => index)
                      .map(
                        (e) => Container(
                          width: 5,
                          height: 5,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                      .toList(),
                )),
          ],
        ),
      );
    } else {
      return widget.widgetWhenDone!;
    }
  }
}
