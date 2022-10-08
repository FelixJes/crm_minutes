import 'package:flutter/material.dart';

class AllLeadsPopupmenu extends StatelessWidget {
  const AllLeadsPopupmenu({
    super.key,
  });

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
                  'All Leads',
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
                          'All Leads',
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
                          'Converted Leads',
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
                          'Junk Leads',
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
                          'Mailing Leads',
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
                          'My Converted Leads',
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
                          'My Leads',
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
                          'Not Qualified Leads',
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
                          'Open Leads',
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
                          'Recently Created Leads',
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
                          'Recently Modified Leads',
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
                          'Todays Leads',
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
                          'Unread Leads',
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
                          'Unsubscribed Leads',
                        ),
                      ],
                    ),
                  ),
                ]));
  }
}
