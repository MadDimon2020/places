import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/res/app_colors.dart';
import 'package:places/res/const.dart';

class SightCard extends StatelessWidget {
  final Sight sight;
  const SightCard({required this.sight, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppConstants.sightCardPadding,
        top: AppConstants.sightCardPadding,
        right: AppConstants.sightCardPadding,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.sightCardPadding,
                ),
                width: double.infinity,
                height: AppConstants.cardHeight / 2,
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
                padding: const EdgeInsets.all(AppConstants.sightCardPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      sight.type,
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        height: 1.285,
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      icon: const Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: AppConstants.cardHeight / 2,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              color: Color(0xFFF5F5F5),
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 40,
                  margin: const EdgeInsets.only(
                    left: AppConstants.sightCardPadding,
                    top: AppConstants.sightCardPadding,
                    right: AppConstants.sightCardPadding,
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
                Container(
                  alignment: Alignment.centerLeft,
                  height: 18,
                  margin: const EdgeInsets.only(
                    left: AppConstants.sightCardPadding,
                    top: 2,
                    right: AppConstants.sightCardPadding,
                    bottom: AppConstants.sightCardPadding,
                  ),
                  child: Text(
                    maxLines: 1,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
