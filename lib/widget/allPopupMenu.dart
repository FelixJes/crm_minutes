import 'package:flutter/material.dart';

class AllpopUpmenuButton extends StatelessWidget {
  const AllpopUpmenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
          constraints: BoxConstraints(maxHeight: 400),
          padding: EdgeInsets.only(bottom: 3),
          child: Row(
            children: [
              Text(
                'All',
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
                  onTap: () {},
                  child: Text(
                    'A',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'B',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'C',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'D',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'E',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'F',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'G',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'H',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'I',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'J',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'K',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'L',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'M',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'N',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'O',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'P',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'Q',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'R',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'S',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'T',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'U',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'V',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'W',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'X',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'Y',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text(
                    'Z',
                  ),
                ),
              ]),
    );
  }
}
