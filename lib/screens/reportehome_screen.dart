/* import 'package:flutter/material.dart';
import 'package:login/models/models.dart';
import 'package:login/screens/screens.dart';
import 'package:login/services/services.dart';
import 'package:login/widgets/widgets.dart';

import 'package:provider/provider.dart';

class ReporteHome extends StatelessWidget {
  const ReporteHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final reporteService = Provider.of<ReporteService>(context);

    if (reporteService.isLoading) return LoadingScreen();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Reportes', style: TextStyle(color: Colors.black)),
        foregroundColor: Colors.black,
        backgroundColor: Colors.orangeAccent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
      ),
      body: ListView.builder(
          itemCount: reporteService.reporte.length,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
/*                   reporteService.selectedReporte =
                      reporteService.reporte[index].copy();
                  Navigator.pushNamed(context, 'reporteedit'); */
                },
                child: ReporteCard(
                  reporte: reporteService.reporte[index],
                ),
              )),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.black,
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: Colors.orangeAccent,
        onPressed: () {
          reporteService.selectedReporte = new Reporte(
              colonia: '', descripcin: '', fecha: DateTime.now(), motivo: '');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReporteScreenedit()),
          );
        },
      ),
    );
  }
}
 */