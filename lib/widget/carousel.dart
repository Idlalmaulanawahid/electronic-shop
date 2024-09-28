import 'package:cofee_shop/widget/my_card.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  List<Color> colors = [Colors.teal, Colors.blue, Colors.pink];
  int position = 0; //HERE
  @override
  Widget build(BuildContext context) {
    Widget myCircle(int p) {
      return Container(
        height: 15,
        width: 15,
        decoration: BoxDecoration(
          color: position == p ? colors[p] : Colors.grey.shade300,
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      );
    }

    return SizedBox(
      height: 275,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 225,
            child: PageView.builder(
              onPageChanged: (pageposition) {
                setState(
                  () {
                    position = pageposition;
                  },
                );
              },
              itemCount: colors.length,
              itemBuilder: (context, pagePosition) {
                return MyCard(
                  colors[pagePosition],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myCircle(0),
              const SizedBox(
                width: 10,
              ),
              myCircle(1),
              const SizedBox(
                width: 10,
              ),
              myCircle(2),
            ],
          )
        ],
      ),
    );
  }
}
