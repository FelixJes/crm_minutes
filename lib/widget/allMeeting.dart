import 'package:flutter/material.dart';

class AllMeeting extends StatelessWidget {
  const AllMeeting({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          shadowColor: MaterialStatePropertyAll(Colors.blue),
          backgroundColor:
              MaterialStatePropertyAll(Theme.of(context).accentColor),
        ),
        onPressed: () {},
        child: PopupMenuButton(
            padding: EdgeInsets.only(bottom: 3),
            child: Row(
              children: [
                Text(
                  'All Meetings',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ],
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          size: 18,
                          color: Colors.grey.shade300,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'All Meetings',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          size: 18,
                          color: Colors.grey.shade300,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Canceled Meeting',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          size: 18,
                          color: Colors.grey.shade300,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Completed Meeting',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          size: 18,
                          color: Colors.grey.shade300,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'My Canceled Meeting',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          size: 18,
                          color: Colors.grey.shade300,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'My Completed Meeting',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          size: 18,
                          color: Colors.grey.shade300,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'My Upcoming Meeting',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          size: 18,
                          color: Colors.grey.shade300,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'This Weeks Meetings',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          size: 18,
                          color: Colors.grey.shade300,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Todays Meetings',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          size: 18,
                          color: Colors.grey.shade300,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Up Coming Meetings',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          size: 18,
                          color: Colors.grey.shade300,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'New Coustom View',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ]));
  }
}