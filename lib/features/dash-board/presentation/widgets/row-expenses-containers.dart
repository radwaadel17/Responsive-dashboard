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
      children: items.asMap().entries.map((entry) {
        int index = entry.key;
        var item = entry.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: AllExpensesItem(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                allExpensesItemModel: item,
                isActive: selectedIndex == index,
              ),
            ),
          );
        } else {
          return Expanded(
            child: AllExpensesItem(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              allExpensesItemModel: item,
              isActive: selectedIndex == index,
            ),
          );
        }
      }).toList(),
    );
  }
}
// as map  // to map 