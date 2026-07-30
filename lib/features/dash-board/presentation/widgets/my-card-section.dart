import 'package:flutter/material.dart';
import 'package:responsiveapp/core/widgets/custom-container.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/my-card-header.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/my-card-page-view.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/trasaction-section.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: CustomScrollView(
        slivers: const [
          SliverToBoxAdapter(child: MycardHeader()),
          SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverToBoxAdapter(child: MyCardPageView()),
          SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverToBoxAdapter(
            child: Divider(height: 24, color: Color(0xffF1F1F1)),
          ),
          SliverToBoxAdapter(child: TransactionSection()),
        ],
      ),
    );
  }
}
