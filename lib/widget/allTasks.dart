import 'package:flutter/material.dart';

class AllTask extends StatelessWidget {
  const AllTask({Key? key}) : super(key: key);

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
                  'All Task',
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
                          'All Tasks',
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
                          'Closed Task',
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
                          'My Closed Task',
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
                          'My Next 7 Days Task',
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
                          'My Open Task',
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
                          'My OverDue Task',
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
                          'My Task',
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
                          'My Today Task',
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
                          'My Tommorrow Task',
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
