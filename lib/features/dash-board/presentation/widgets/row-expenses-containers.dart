import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/assets.dart';
import 'package:responsiveapp/features/dash-board/presentation/models/all-expenses-item-model.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/all-expenses-item.dart';

class RowExpensesContainers extends StatefulWidget {
  const RowExpensesContainers({super.key});

  @override
  State<RowExpensesContainers> createState() => _RowExpensesContainersState();
}

class _RowExpensesContainersState extends State<RowExpensesContainers> {
  int selectedIndex = 0;
  List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      title: 'Balance',
      date: 'April 2022',
      amount: r'$20,129',
      icon: Assets.imagesMoneysIcon,
    ),
    AllExpensesItemModel(
      title: 'Balance',
      date: 'April 2022',
      amount: r'$20,129',
      icon: Assets.imagesCardReceiveIcon,
    ),
    AllExpensesItemModel(
      title: 'Balance',
      date: 'April 2022',
      amount: r'$20,129',
      icon: Assets.imagesCardSendIcon,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
        Expanded(
          child: AllExpensesItem(
            allExpensesItemModel: items[0],
            isActive: selectedIndex == 0,
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
          ),
        ),
         SizedBox(width: 6),
          Expanded(
            child: AllExpensesItem(
            allExpensesItemModel: items[1],
            isActive: selectedIndex == 1,
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
                    ),
          ),
          SizedBox(width: 6),
          Expanded(
            child: AllExpensesItem(
            allExpensesItemModel: items[2],
            isActive: selectedIndex == 2  ,
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
                    ),
          ),
     ]
    );
  }
}
// as map  // to map 