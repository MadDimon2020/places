import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/mocks.dart';

class SightDetails extends StatelessWidget {
  final String sightId;
  const SightDetails({required this.sightId, super.key});

  @override
  Widget build(BuildContext context) {
    final selectedSight = mocks.firstWhere((sight) => sight.id == sightId);
    final deviceWidth = MediaQuery.of(context).size.width;
    final calculatedPadding = 16 / 360 * deviceWidth;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: deviceWidth,
                height: deviceWidth + 1.1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      selectedSight.url,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: deviceWidth / 22.5,
                top: deviceWidth / 8,
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
          Padding(
            padding: EdgeInsets.only(
              left: calculatedPadding,
              top: calculatedPadding * 1.5,
              right: calculatedPadding,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                selectedSight.name,
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
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: calculatedPadding),
                child: Text(
                  selectedSight.type,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 18 / 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3B3E5B),
                  ),
                ),
              ),
              const Text(
                'закрыто до 09:00',
                style: TextStyle(
                  fontSize: 14,
                  height: 18 / 14,
                  color: Color(0xFF7C7E92),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: calculatedPadding,
              vertical: calculatedPadding * 1.5,
            ),
            child: Text(
              selectedSight.details,
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
            padding: EdgeInsets.only(
              left: calculatedPadding,
              right: calculatedPadding,
              bottom: calculatedPadding * 2,
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
                  RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.route_rounded,
                      color: Color(0xFFFFFFFF),
                      size: 30,
                    ),
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
            padding: EdgeInsets.symmetric(horizontal: calculatedPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: (deviceWidth - calculatedPadding * 2) / 2,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.calendar,
                          color: const Color(0xFF7C7E92).withOpacity(0.56),
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
                    minWidth: (deviceWidth - calculatedPadding * 2) / 2,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.favorite_border_rounded,
                          color: Color(0xFF3B3E5B),
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
