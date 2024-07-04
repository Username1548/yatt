import 'package:flutter/material.dart';

class FollowedCard extends StatelessWidget {
  const FollowedCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height * 0.08,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(182, 147, 250, 0.05),
            borderRadius: BorderRadiusDirectional.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(children: [
            Center(
              child: SizedBox(
                width: size.width * 0.3,
                child: RichText(
                  softWrap: true,
                  maxLines: 2,
                  text: const TextSpan(
                    text: 'Followed ',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(38, 45, 53, 1)),
                    children: [
                      TextSpan(
                          text: 'Arnold Schwarzenegger',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(182, 147, 250, 1))),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: size.width * 0.12,
              height: size.height * 0.09,
              child: Stack(children: [
                Align(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: const Color.fromRGBO(182, 147, 250, 1),
                          width: 3),
                    ),
                    child: Image.asset(
                      'assets/icons/guy.png',
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: SizedBox(
                    width: size.width * 0.06,
                    height: size.height * 0.05,
                    child: Stack(children: [
                      Positioned(
                        right: 1.5,
                        bottom: 0,
                        child: Container(
                          width: size.width * 0.045,
                          height: size.height * 0.045,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(182, 147, 250, 1),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Align(
                          alignment: const Alignment(1, 0),
                          child: Image.asset(
                              scale: 0.8, 'assets/icons/Union.png')),
                    ]),
                  ),
                )
              ]),
            )
          ]),
        ));
  }
}
