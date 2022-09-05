import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/res/app_colors.dart';
import 'package:places/res/app_strings.dart';
import 'package:places/res/const.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;
  const SightDetails({required this.sight, super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: deviceWidth,
                height: deviceWidth + 1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      sight.url,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: AppConstants.sightCardPadding,
                top: AppConstants.sightCardPadding * 3,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: deviceWidth / 11.25,
                    height: deviceWidth / 11.25,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: deviceWidth * 0.42,
                  height: deviceWidth * 0.02,
                  decoration: BoxDecoration(
                    color: const Color(0xFF252849),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(
              left: AppConstants.sightCardPadding,
              top: AppConstants.sightCardPadding * 1.5,
              right: AppConstants.sightCardPadding,
            ),
            child: Text(
              sight.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.sightCardPadding,
                ),
                child: Text(
                  sight.type,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 18 / 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3B3E5B),
                  ),
                ),
              ),
              const Text(
                AppStrings.workingHours,
                style: TextStyle(
                  fontSize: 14,
                  height: 18 / 14,
                  color: Color(0xFF7C7E92),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.sightCardPadding,
              vertical: AppConstants.sightCardPadding * 1.5,
            ),
            child: Text(
              sight.details,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 14,
                height: 18 / 14,
                color: Color(0xFF3B3E5B),
              ),
              maxLines: 4,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: AppConstants.sightCardPadding,
              right: AppConstants.sightCardPadding,
              bottom: AppConstants.sightCardPadding * 2,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFF4CAF50),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                minimumSize: MaterialStateProperty.all<Size>(
                  const Size.fromHeight(48),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ImageIcon(
                    AssetImage('assets/images/Go_Icon.png'),
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'ПОСТРОИТЬ МАРШРУТ',
                    style: TextStyle(
                      fontSize: 14,
                      height: 18 / 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 14 * 0.03,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.sightCardPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth:
                        (deviceWidth - AppConstants.sightCardPadding * 2) / 2,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        ImageIcon(
                          const AssetImage('assets/images/Calendar_Icon.png'),
                          color: const Color(0xFF7C7E92).withOpacity(0.56),
                          size: 25,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Запланировать',
                          style: TextStyle(
                            fontSize: 14,
                            height: 18 / 14,
                            color: const Color(0xFF7C7E92).withOpacity(0.56),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth:
                        (deviceWidth - AppConstants.sightCardPadding * 2) / 2,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        ImageIcon(
                          AssetImage('assets/images/Heart_Icon.png'),
                          size: 25,
                          color: AppColors.baseColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'В Избранное',
                          style: TextStyle(
                            fontSize: 14,
                            height: 18 / 14,
                            color: Color(0xFF3B3E5B),
                          ),
                        ),
                      ],
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
