import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KgCarousel extends StatefulWidget {
  const KgCarousel(
      {Key? key,
      // each items contains three strings: the image path, the title, and the subtitle.
      this.items = const <String>[],
      this.autoplay = true})
      : super(key: key);

  final List items;
  final bool autoplay;

  @override
  State<KgCarousel> createState() => _KgCarouselState();
}

class _KgCarouselState extends State<KgCarousel> {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
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
                  setState(() {});
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
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                    .toList(),
              )),
        ],
      ),
    );
  }
}
