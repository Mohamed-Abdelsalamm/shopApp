import 'package:flutter/material.dart';
import 'package:shop/shared/components/account_continer.dart';
import 'package:shop/shared/components/text_reuse.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 14.0, left: 14.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: CircleAvatar(
                      radius: 60,
                      child: Icon(
                        Icons.person,
                        size: 70,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextReuse(
                      text: 'Moahmed Abdelsalam',
                      isBold: true,
                      size: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      AccountContainer(
                        icon: Icons.alternate_email,
                        text: TextReuse(
                          text: 'Mohamedmedo3@gmail.com',
                          color: Colors.white,
                          isBold: true,
                          size: 15,
                        ),
                      ),
                      AccountContainer(
                        icon: Icons.phone_android,
                        text: TextReuse(
                          text: '01122373042',
                          color: Colors.white,
                          isBold: true,
                          size: 18,
                        ),
                      ),
                      AccountContainer(
                        icon: Icons.location_on,
                        text: TextReuse(
                          text: 'Location',
                          color: Colors.white,
                          isBold: true,
                          size: 18,
                        ),
                      ),
                      AccountContainer(
                        icon: Icons.history,
                        text: TextReuse(
                          text: 'History List',
                          color: Colors.white,
                          isBold: true,
                          size: 18,
                        ),
                      ),
                      AccountContainer(
                        icon: Icons.info,
                        text: TextReuse(
                          text: 'About',
                          color: Colors.white,
                          isBold: true,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
