import 'package:flutter/material.dart';
import 'package:shop/shared/components/text_reuse.dart';

class AccountContainer extends StatelessWidget {
  IconData? icon ;
  TextReuse? text;

  AccountContainer({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.purple],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(icon,color: Colors.white,size: 30,),
            ),
            SizedBox(
              width: 14,
            ),
            Container(child: text),
          ],
        ),
      ),
    );
  }
}
