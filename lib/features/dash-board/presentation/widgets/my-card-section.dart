import 'package:flutter/material.dart';
import 'package:responsiveapp/core/widgets/custom-container.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/my-card-header.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/my-card-page-view.dart';
class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: CustomScrollView(
        slivers: const [
          SliverToBoxAdapter(child: MycardHeader()) , 
          SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverFillRemaining(
            child: MyCardPageView()),
          ],

      ),
    );
  }
}

