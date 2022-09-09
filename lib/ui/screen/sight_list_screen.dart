import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/res/app_colors.dart';
import 'package:places/res/app_strings.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/widgets/custom_appbar.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      //   elevation: 0.0,
      //   toolbarHeight: 72.0,
      //   title: const Text(
      //     AppStrings.mainPageTitle,
      //     style: TextStyle(
      //       color: AppColors.baseColor,
      //       fontWeight: FontWeight.bold,
      //       fontSize: 32.0,
      //       height: 1.125,
      //     ),
      //     textAlign: TextAlign.left,
      //   ),
      // ),
      appBar: CustomAppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        toolbarHeight: 72.0,
        title: const Text(
          AppStrings.mainPageTitle,
          style: TextStyle(
            color: AppColors.baseColor,
            fontWeight: FontWeight.bold,
            fontSize: 32.0,
            height: 1.125,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: Scrollbar(
        controller: _scrollController,
        child: ListView.builder(
          itemBuilder: (context, index) => SightCard(sight: mocks[index]),
          itemCount: mocks.length,
        ),
      ),
    );
  }
}
