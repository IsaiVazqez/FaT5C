/* import 'package:flutter/material.dart';
import 'package:login/models/models.dart';

class ReporteCard extends StatelessWidget {
  final Reporte reporte;

  const ReporteCard({Key? key, required this.reporte}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        height: 150,
        decoration: _cardBorders(),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            _BackgroundImage(reporte.picture),
            _ServicioDetails(
              title: reporte.motivo,
/*               subTitle: reporte.colonia, */
/*               fecha: reporte.fecha.toString(), */
              descr: reporte.descripcin,
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _cardBorders() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, offset: Offset(0, 10), blurRadius: 10),
          ]);
}

class _ServicioDetails extends StatelessWidget {
  final String title;
/*   final String subTitle; */

  final String descr;

  const _ServicioDetails({
    required this.title,
/*     required this.subTitle, */
    required this.descr,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 150),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: double.infinity,
        decoration: _buildBoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
/*             Text(
              subTitle,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ), */
            /*            Text(
              fecha,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ), */
            Text(
              descr,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() => const BoxDecoration(
      color: Colors.orangeAccent,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ));
}

class _BackgroundImage extends StatelessWidget {
  final String? url;

  const _BackgroundImage(this.url);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      child: Container(
        color: Colors.transparent,
        width: 148,
        height: 148,
        child: url == null
            ? const Image(
                image: AssetImage('assets/no-image.png'),
                fit: BoxFit.cover,
              )
            : FadeInImage(
                placeholder: const AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(url!),
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
 */