import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen/sight_details.dart';

class SightCard extends StatelessWidget {
  static const double _cardPadding = 16;
  static const double _cardHeight = 192;
  final Sight sight;
  const SightCard({required this.sight, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: _cardPadding,
        top: _cardPadding,
        right: _cardPadding,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (context) => SightDetails(sightId: sight.id),
            ),
          );
        },
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: _cardHeight / 2,
                  width: MediaQuery.of(context).size.width - _cardPadding * 2,
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
                  padding: const EdgeInsets.all(_cardPadding),
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
              height: _cardHeight / 2,
              width: MediaQuery.of(context).size.width - _cardPadding * 2,
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
                    height: 40,
                    margin: const EdgeInsets.only(
                      left: _cardPadding,
                      top: _cardPadding,
                      right: _cardPadding,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        sight.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          height: 1.25,
                          color: Color(0xFF3B3E5B),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 18,
                    margin: const EdgeInsets.only(
                      left: _cardPadding,
                      top: 2,
                      right: _cardPadding,
                      bottom: _cardPadding,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
