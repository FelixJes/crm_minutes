import 'package:flutter/material.dart';

class AllDeals extends StatelessWidget {
  const AllDeals({Key? key}) : super(key: key);

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
                  'All Deals',
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
                          'All Deals',
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
                          'Closing Next Month',
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
                          'Closing This Month',
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
                          'My Deals',
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
                          'My Deals Closing this Month',
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
                          'New Last Week',
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
                          'New This Week',
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
                          'Recently Created Deals',
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
                          'Recently Modified Deals',
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
                          'Unread Deals',
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
