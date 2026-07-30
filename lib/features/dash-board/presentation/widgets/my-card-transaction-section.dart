import 'package:flutter/material.dart';
import 'package:responsiveapp/core/widgets/custom-container.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/my-card-header.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/my-card-page-view.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/trasaction-section.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomContainer(
            child: Column(
              children: [
                MycardHeader(),
                SizedBox(height: 12),
                MyCardPageView(),
                SizedBox(height: 12),
                Divider(height: 24, color: Color(0xffF1F1F1)),
                TransactionSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
