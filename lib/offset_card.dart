import 'package:flutter/material.dart';

class OffsetCard extends StatelessWidget {
  const OffsetCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      clipBehavior: Clip.hardEdge,
      height: size.height * 0.35,
      width: size.width,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(182, 147, 250, 0.05),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/light/light1.png',
              )),
          Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/light/light2.png',
              )),
          Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/light/light3.png',
              )),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    text: 'Offsetted in ',
                    style: TextStyle(
                      color: Color.fromRGBO(
                          38, 45, 53, 1), // Color for 'Offsetted in'
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Nicaforest',
                        style: TextStyle(
                          color: Color.fromRGBO(
                              182, 147, 250, 1), // Color for 'Nicaforest'
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.19,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/birds.png'),
                        fit: BoxFit.cover,
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'OFFSET',
                  style: TextStyle(
                      color: Color.fromRGBO(38, 45, 53, 0.5),
                      fontSize: 11,
                      fontWeight: FontWeight.w500),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [Color(0xFF81C7F5), Color(0xFFB693FA)],
                          ).createShader(bounds),
                          child: const Text(
                            '1263',
                            style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Baseline(
                          baseline: -5,
                          baselineType: TextBaseline.alphabetic,
                          child: ShaderMask(
                            shaderCallback: (bounds) => const LinearGradient(
                              colors: [Color(0xFF81C7F5), Color(0xFFB693FA)],
                            ).createShader(bounds),
                            child: const Text(
                              ' tCO₂e',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
