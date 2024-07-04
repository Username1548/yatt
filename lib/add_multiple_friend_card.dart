import 'package:flutter/material.dart';

class AddMultipleFriendCard extends StatelessWidget {
  const AddMultipleFriendCard({super.key});

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
                          text: 'Added 3 new friends',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(38, 45, 53, 1)),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: size.width * 0.4,
                    height: size.height * 0.08,
                    child: Stack(children: [
                      Align(
                        alignment: const Alignment(0.32, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 3),
                          ),
                          child: Image.asset(
                            'assets/icons/guy.png',
                          ),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0.66, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 3),
                          ),
                          child: Image.asset(
                            'assets/icons/guy.png',
                          ),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(1, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 3),
                          ),
                          child: Image.asset(
                            'assets/icons/guy.png',
                          ),
                        ),
                      ),
                    ]),
                  )
                ]),
              ));
  }
}
