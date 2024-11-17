import 'package:flutter/material.dart';

class JobTiles extends StatefulWidget {
  const JobTiles({super.key});

  @override
  State<JobTiles> createState() => _JobTilesState();
}

class _JobTilesState extends State<JobTiles> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 210,
        padding: EdgeInsets.all(7),
        decoration: const BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.all(
            Radius.circular(
              15,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Image.asset(
                      'lib/assets/m011t0447_b_social_sign_18sep22.jpg'),
                ),
                SizedBox(
                  height: 14,
                ),
                //jobtitle
                Text('Software developer'),
                //level required
                Text('entry level')
              ],
            ),
            //pay
            Text('40 N'),
          ],
        ),
      ),
    );
  }
}
