import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  // const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Diet Deviser"),
          backgroundColor: Colors.grey[600],
          actions: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.person),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                        height: 50,
                        width: 150,
                        color: Colors.lightGreenAccent,
                        child: Text("anje")),
                  ),
                  Container(
                      height: 50,
                      width: 150,
                      color: Colors.blue,
                      child: Text("anje2")),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ));
  }
}
