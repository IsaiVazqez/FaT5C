import 'package:login/routes/AnimationPageRoute.dart';
import 'package:login/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:login/routes/tabnavigation.dart';
import 'package:login/screens/screens.dart';
import 'package:provider/provider.dart';
import '../theme_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int home = 0;
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Consumer<ThemeModel>(
      builder: (context, ThemeModel themeNotifier, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[700],
            automaticallyImplyLeading: false,
            title: const Text(
              'Finding A Tournament',
            ),
            elevation: 0,
            titleTextStyle: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'SFPRODISPLAY2',
              fontWeight: FontWeight.bold,
            ),
            actions: [
              IconButton(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  icon: Icon(themeNotifier.isDark
                      ? Icons.nightlight_round
                      : Icons.wb_sunny),
                  onPressed: () {
                    themeNotifier.isDark
                        ? themeNotifier.isDark = false
                        : themeNotifier.isDark = true;
                  })
            ],
          ),
          body: SafeArea(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(
                8.0,
              ),
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                ),
                const SizedBox(
                  height: 22,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, AnimationPageRoute(widget: ServicioHome()));
                  },
                  child: const card1(),
                ),
                const SizedBox(
                  height: 22,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, AnimationPageRoute(widget: TorneosHome()));
                  },
                  child: const card2(),
                ),
              ],
            ),
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
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.initialRoute);
                  } else {
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.profileRoute);
                  }
                },
              );
            },
          ),
        );
      },
    );
  }
}

class card1 extends StatelessWidget {
  const card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (Card(
        clipBehavior: Clip.antiAlias,
        shadowColor: Colors.black,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/BalonB.png'),
                alignment: Alignment.topRight,
                scale: 4,
                opacity: 40),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 50, 107, 156),
                Color.fromARGB(255, 66, 226, 186)
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          width: 200,
          height: 175,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 120,
                  width: 150,
                  child: Text(
                    'Gestiona tus Servicios',
                    textAlign: TextAlign.left,
                    textWidthBasis: TextWidthBasis.parent,
                    maxLines: 3,
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'SFPRODISPLAY0',
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class card2 extends StatelessWidget {
  const card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        clipBehavior: Clip.antiAlias,
        shadowColor: Colors.black,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/trofB.png'),
                alignment: Alignment.topRight,
                scale: 4,
                opacity: 50),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 203, 56, 248),
                Color.fromARGB(255, 106, 15, 190)
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          width: 200,
          height: 175,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 120,
                  width: 150,
                  child: Text(
                    'Gestiona tus Torneos',
                    textAlign: TextAlign.start,
                    textWidthBasis: TextWidthBasis.parent,
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'SFPRODISPLAY0 ',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
