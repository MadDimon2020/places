import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/res/app_colors.dart';
import 'package:places/res/const.dart';
import 'package:places/ui/screen/sight_details.dart';

class SightCard extends StatelessWidget {
  final Sight sight;
  const SightCard({required this.sight, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cardWidth =
        MediaQuery.of(context).size.width - AppConstants.kSightCardPadding * 2;
    final cardHeight = cardWidth / 1.5;
    return Padding(
      padding: const EdgeInsets.only(
        left: AppConstants.kSightCardPadding,
        top: AppConstants.kSightCardPadding,
        right: AppConstants.kSightCardPadding,
      ),
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: InkWell(
          onTap: () => _goToDetailsScreen(context: context, sight: sight),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppConstants.kSightCardPadding,
                    ),
                    height: cardHeight / 2,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          sight.url,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.all(AppConstants.kSightCardPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          sight.type,
                          style: const TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            height: 1.285,
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: const ImageIcon(
                            AssetImage('assets/images/Heart_Icon.png'),
                            size: 24,
                            color: AppColors.whiteColor,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: cardHeight / 2,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  color: AppColors.backgroundGrey,
                ),
                child: Column(
                  children: [
                    Flexible(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(
                          left: AppConstants.kSightCardPadding,
                          top: AppConstants.kSightCardPadding,
                          right: AppConstants.kSightCardPadding,
                        ),
                        child: Text(
                          sight.name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            height: 1.25,
                            color: AppColors.baseColor,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(
                          left: AppConstants.kSightCardPadding,
                          top: 2,
                          right: AppConstants.kSightCardPadding,
                          bottom: AppConstants.kSightCardPadding,
                        ),
                        child: Text(
                          maxLines: 2,
                          sight.details,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 14,
                            height: 1.285,
                            color: Color(0xFF7C7E92),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _goToDetailsScreen({
    required BuildContext context,
    required Sight sight,
  }) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (context) => SightDetails(sight: sight),
    ));
  }
}
