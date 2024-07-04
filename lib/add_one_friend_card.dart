import 'package:flutter/material.dart';

class AddOneFriendCard extends StatelessWidget {
  const AddOneFriendCard({super.key});

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
                    text: 'Added ',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(38, 45, 53, 1)),
                    children: [
                      TextSpan(
                          text: 'Joe Pierce',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(182, 147, 250, 1))),
                      TextSpan(
                        text: ' as a friend',
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            Stack(children: [
              Image.asset(
                'assets/icons/guy.png',
              ),
            ])
          ]),
        ));
  }
}
