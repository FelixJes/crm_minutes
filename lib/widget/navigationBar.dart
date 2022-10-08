import 'package:flutter/material.dart';

class NavigationTab extends StatefulWidget {
  NavigationTab({Key? key}) : super(key: key);

  @override
  State<NavigationTab> createState() => _NavigationTabState();
}

class _NavigationTabState extends State<NavigationTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Color.fromARGB(221, 39, 39, 39),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(width: 130),
          Container(
            child: Row(
              children: [
                NavWidget(title: 'Home'),
                NavWidget(title: 'Leads'),
                NavWidget(title: 'Contact'),
                NavWidget(title: 'Accounts'),
                NavWidget(title: 'Deals'),
                NavWidget(title: 'Task'),
                NavWidget(title: 'Meeting'),
                NavWidget(title: 'Calls'),
                NavWidget(title: 'Reports'),
                NavWidget(title: 'Analytics'),
                NavWidget(title: 'Products'),
                NavWidget(title: 'Quotes'),
                NavWidget(title: 'Sales Orders'),
                NavWidget(title: 'Purchase Orders'),
                NavWidget(title: 'Services'),
                NavWidget(title: 'Projects'),
                TextButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(Colors.white10)),
                  onPressed: () {},
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 60),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Enterprise-Trail',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Upgrade',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: VerticalDivider(
                    indent: 15,
                    endIndent: 15,
                    color: Colors.white38,
                  ),
                ),
                NavIcon(icon: Icon(Icons.search)),
                NavIcon(icon: Icon(Icons.notifications_none_rounded)),
                NavIcon(icon: Icon(Icons.addchart_outlined)),
                NavIcon(icon: Icon(Icons.event)),
                NavIcon(icon: Icon(Icons.store_rounded)),
                NavIcon(icon: Icon(Icons.settings)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: VerticalDivider(
                    indent: 15,
                    endIndent: 15,
                    color: Colors.white38,
                  ),
                ),
                NavIcon(icon: Icon(Icons.account_circle_sharp)),
                NavIcon(icon: Icon(Icons.menu)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavIcon extends StatelessWidget {
  const NavIcon({
    required this.icon,
    super.key,
  });

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(overlayColor: MaterialStatePropertyAll(Colors.white)),
      onPressed: () {},
      icon: icon,
      color: Colors.white60,
    );
  }
}

class NavWidget extends StatelessWidget {
  const NavWidget({
    this.title,
    super.key,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: TextButton(
        style:
            ButtonStyle(overlayColor: MaterialStatePropertyAll(Colors.white10)),
        onPressed: () {},
        child: Text(
          title!,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w200,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
