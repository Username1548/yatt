import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_task/add_multiple_friend_card.dart';
import 'package:test_flutter_task/add_one_friend_card.dart';
import 'package:test_flutter_task/feedback_row.dart';
import 'package:test_flutter_task/followed_card.dart';
import 'package:test_flutter_task/leo_card.dart';
import 'package:test_flutter_task/offset_card.dart';

class FeedView extends StatefulWidget {
  const FeedView({super.key});

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Row(children: [
            Container(
              width: size.width * 0.5,
              height: size.height * 0.06,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  children: [
                    const Text(
                      'Popular at first',
                      style: TextStyle(
                          color: Color.fromRGBO(38, 45, 53, 0.5),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: size.width * 0.1,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: CupertinoSwitch(
                            value: value,
                            onChanged: (value) {
                              setState(() {
                                this.value = value;
                              });
                            }),
                      ),
                    )
                  ],
                ),
              )),
            ),
            const Spacer(),
            Container(
              height: size.height * 0.06,
              width: size.width * 0.12,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Image.asset('assets/icons/filter.png'),
            )
          ]),
          const SizedBox(
            height: 16,
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: Image.asset('assets/icons/leo.png'),
            title: const Text(
              'Leonardo Dicaprio',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(38, 45, 53, 1)),
            ),
            subtitle: const Text(
              '59 min ago',
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(38, 45, 53, 0.5)),
            ),
          ),
          const OffsetCard(),
          const SizedBox(
            height: 12,
          ),
          const FeedbackRow(),
          const SizedBox(
            height: 5,
          ),
          const LeoCard(),
          const AddOneFriendCard(),
          const SizedBox(
            height: 5,
          ),
          const LeoCard(),
          const AddMultipleFriendCard(),
          const SizedBox(
            height: 5,
          ),
          const LeoCard(),
          const FollowedCard()
        ],
      ),
    );
  }
}
