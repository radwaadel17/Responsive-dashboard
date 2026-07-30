import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsiveapp/core/widgets/dots.dart';
import 'package:responsiveapp/features/dash-board/presentation/models/card-model.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/my-card.dart';

class MyCardPageView extends StatefulWidget {
  const MyCardPageView({super.key});

  @override
  State<MyCardPageView> createState() => _MyCardPageViewState();
}

class _MyCardPageViewState extends State<MyCardPageView> {
  final List<CardModel> cards = const [
    CardModel(
      title: "Travel Card",
      subtitle: "Mohamed Hassan",
      cardNum: "4512 9876 3456 7821",
      validDate: "11/28",
    ),
    CardModel(
      title: "Business Card",
      subtitle: "Sarah Ahmed",
      cardNum: "4023 7654 1289 5678",
      validDate: "03/30",
    ),
    CardModel(
      title: "Platinum Card",
      subtitle: "Radwa Adel",
      cardNum: "5289 4732 9184 6451",
      validDate: "08/29",
    ),
  ];
  int currentIndex = 0;
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView.builder(
          controller: controller,
          itemCount: cards.length,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (context, index) => MyCard(cardModel: cards[index]),
        ),
        Padding(
          padding: const EdgeInsets.only(top : 4  , right: 4 , left: 4),
          child: Row(
            children: cards.asMap().entries.map((entry) {
              return entry.key == currentIndex
                  ? const ActiveDot()
                  : const NonActiveDot();
            }).toList(),
          ),
        ),
      ],
    );
  }
}
