import 'package:flutter/material.dart';

class FeedbackRow extends StatelessWidget {
  const FeedbackRow({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
            children: [
              Container(
                  width: size.width * 0.2,
                  height: size.height * 0.04,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(182, 147, 250, 0.05),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/icons/likes.png'),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '100',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(38, 45, 53, 0.5)),
                        )
                      ],
                    ),
                  )),
              const SizedBox(
                width: 4,
              ),
              Container(
                width: size.width * 0.2,
                height: size.height * 0.04,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(182, 147, 250, 0.05),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/icons/comments.png'),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        '100',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(38, 45, 53, 0.5)),
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/icons/views.png'),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    '5.8k',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(38, 45, 53, 0.5)),
                  )
                ],
              )
            ],
          );
  }
}