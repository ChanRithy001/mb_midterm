import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                  'lib/image/logo.png',
                  width: 200,
                  height: 100,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Visit Cambodia with Me",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              )
            ],
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.green,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                fontSize: 14,
                color: Colors.green,
              ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(
              Icons.map,
              color: Colors.black54,
            ),
            title: const Text(
              'Provinces',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(
              Icons.search,
              color: Colors.black54,
            ),
            title: const Text(
              'Search',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(
              Icons.account_circle_rounded,
              color: Colors.black54,
            ),
            title: const Text(
              'Account',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(
              Icons.more_horiz,
              color: Colors.black54,
            ),
            title: const Text(
              'More',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
