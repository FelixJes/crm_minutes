import 'package:flutter/material.dart';

class AllContacts extends StatelessWidget {
  const AllContacts({Key? key}) : super(key: key);

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
                  'All Contacts',
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
                          'All Contacts',
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
                          'Mailing Labels',
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
                          'My Contacts',
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
                          'Recently Created Contacts',
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
                          'Recently Modified Contacts',
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
                          'Unreaded Contacts',
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
                          'Unsubscribed Contacts',
                        ),
                      ],
                    ),
                  ),
                ]));
    ;
  }
}
