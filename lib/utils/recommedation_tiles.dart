import 'package:flutter/material.dart';

class RecommedationTiles extends StatelessWidget {
  const RecommedationTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: const EdgeInsets.all(
          15,
        ),
        height: 80,
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Image.asset(
                    'lib/assets/m011t0447_b_social_sign_18sep22.jpg',
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                //COLOMN
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //job title name
                    Text(
                      'Software engineer',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    //job level
                    Text(
                      'intermediate',
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(5),
              height: 25,
              child: Text(
                '6 months',
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(
                  8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
