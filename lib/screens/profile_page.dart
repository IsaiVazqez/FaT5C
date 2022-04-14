import 'package:flutter/material.dart';
import 'package:login/routes/app_routes.dart';
import 'package:login/routes/tabnavigation.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int home = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi Perfil"),
        backgroundColor: Colors.blueGrey[300],
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [
                  0.5,
                  0.9
                ],
                    colors: [
                  Colors.blueGrey.shade600,
                  Colors.blueGrey.shade500
                ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      child: const Icon(
                        Icons.sports_soccer_rounded,
                        color: Colors.black,
                        size: 50.0,
                      ),
                      minRadius: 30.0,
                      backgroundColor: Colors.blueGrey[100],
                    ),
                    CircleAvatar(
                      minRadius: 60,
                      backgroundColor: Colors.blueGrey.shade300,
                      child: const CircleAvatar(
                        backgroundImage:
                            const AssetImage("assets/Merida-FC.png"),
                        minRadius: 50,
                      ),
                    ),
                    CircleAvatar(
                      child: const Icon(
                        Icons.sports,
                        color: Colors.black,
                        size: 50.0,
                      ),
                      minRadius: 30.0,
                      backgroundColor: Colors.blueGrey[100],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Ram Kumar",
                  style: const TextStyle(fontSize: 22.0, color: Colors.white),
                ),
                Text(
                  "Kathmandu, Nepal",
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                )
              ],
            ),
          ),
          Container(
            // height: 50,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.blueGrey.shade500,
                    child: const ListTile(
                      title: const Text(
                        "50895",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0),
                      ),
                      subtitle: const Text(
                        "FOLLOWERS",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blueGrey.shade600,
                    child: const ListTile(
                      title: const Text(
                        "34524",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0),
                      ),
                      subtitle: Text(
                        "FOLLOWING",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              "Email",
              style: TextStyle(color: Colors.black, fontSize: 12.0),
            ),
            subtitle: const Text(
              "ram@kumar.com",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          const Divider(),
          const ListTile(
            title: const Text(
              "Phone",
              style: TextStyle(color: Colors.black, fontSize: 12.0),
            ),
            subtitle: const Text(
              "+977 9818225533",
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
          const Divider(),
          const ListTile(
            title: Text(
              "Twitter",
              style: TextStyle(color: Colors.black, fontSize: 12.0),
            ),
            subtitle: Text(
              "@ramkumar",
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
          const Divider(),
          const ListTile(
            title: const Text(
              "Facebook",
              style: TextStyle(color: Colors.black, fontSize: 12.0),
            ),
            subtitle: Text(
              "facebook.com/ramkumar",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          const Divider(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          for (final tabItem in TabNavigationItem.items)
            BottomNavigationBarItem(
              icon: tabItem.icon,
              title: tabItem.title,
            )
        ],
        currentIndex: home,
        onTap: (index) {
          setState(
            () {
              if (home == index) {
                Navigator.pushReplacementNamed(context, AppRoutes.profileRoute);
              } else {
                Navigator.pushReplacementNamed(context, AppRoutes.initialRoute);
              }
            },
          );
        },
      ),
    );
  }
}
