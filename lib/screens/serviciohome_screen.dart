import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:login/models/models.dart';
import 'package:login/routes/AnimationPageRoute.dart';
import 'package:login/routes/app_routes.dart';
import 'package:login/routes/tabnavigation.dart';
import 'package:login/services/services.dart';
import 'package:login/widgets/widgets.dart';
import 'package:login/screens/screens.dart';
import 'package:provider/provider.dart';

class ServicioHome extends StatefulWidget {
  const ServicioHome({Key? key}) : super(key: key);
  @override
  _ServicioHomeState createState() => _ServicioHomeState();
}

class _ServicioHomeState extends State<ServicioHome> {
  int home = 1;

  @override
  Widget build(BuildContext context) {
    final servicioService = Provider.of<ServicioService>(context);

    if (servicioService.isLoading) return LoadingScreen();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushNamed(context, 'HomeScreen'),
        ),
        title: Text('Servicios'),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
      ),
      body: ListView.builder(
          itemCount: servicioService.servicio.length,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  servicioService.selectedServicio =
                      servicioService.servicio[index].copy();
                  Navigator.push(
                      context, AnimationPageRoute(widget: ServicioScreen()));
                },
                child: ServicioCard(
                  servicio: servicioService.servicio[index],
                ),
              )),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.indigo,
        onPressed: () {
          servicioService.selectedServicio = new Servicio(
              horario: '', discapacitados: false, name: 'Fútbol', personas: 0);
          Navigator.push(context, AnimationPageRoute(widget: ServicioScreen()));
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
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
                    context, AppRoutes.servicioscreen);
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
