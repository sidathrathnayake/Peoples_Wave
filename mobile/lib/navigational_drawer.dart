import 'package:flutter/material.dart';
import 'package:mobile/dashboard.dart';
import 'package:mobile/signin.dart';

class NavigationalDrawer extends StatelessWidget {
  const NavigationalDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paddings = EdgeInsets.symmetric(horizontal: 16);
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: Material(
        color: Colors.yellow.shade50,
        child: ListView(
          padding: paddings,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: SizedBox(
                height: size.height / 5,
                width: size.width,
                child: Image.asset('images/splash.png'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildMenuItem(
              text: 'Home',
              icon: Icons.home,
              onClicked: () => selectedItem(context, 0),
            ),
            SizedBox(
              height: 5,
            ),
            buildMenuItem(
              text: 'Account Summery',
              icon: Icons.account_balance,
              onClicked: () => selectedItem(context, 1),
            ),
            SizedBox(
              height: 5,
            ),
            buildMenuItem(
              text: 'Transfer Services',
              icon: Icons.transfer_within_a_station,
              onClicked: () => selectedItem(context, 2),
            ),
            SizedBox(
              height: 5,
            ),
            buildMenuItem(
              text: 'Bill Payments',
              icon: Icons.payment,
              onClicked: () => selectedItem(context, 3),
            ),
            SizedBox(
              height: 5,
            ),
            buildMenuItem(
              text: 'Cheque Services',
              icon: Icons.receipt_long_sharp,
              onClicked: () => selectedItem(context, 4),
            ),
            SizedBox(
              height: 24,
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 5,
            ),
            buildMenuItem(
              text: 'Device Management',
              icon: Icons.devices_other,
              onClicked: () => selectedItem(context, 5),
            ),
            SizedBox(
              height: 5,
            ),
            buildMenuItem(
              text: 'Settings',
              icon: Icons.settings,
              onClicked: () => selectedItem(context, 6),
            ),
            SizedBox(
              height: 5,
            ),
            buildMenuItem(
              text: 'Sign Out',
              icon: Icons.logout,
              onClicked: () => selectedItem(context, 7),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.amber.shade900;
    final hoverColor = Colors.amber;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Dashboard(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Dashboard(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Dashboard(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Dashboard(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Dashboard(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Dashboard(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Dashboard(),
        ));
        break;
      case 7:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Signin(),
        ));
        break;
    }
  }
}
