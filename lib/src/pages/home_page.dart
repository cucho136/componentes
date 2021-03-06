import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //menuProvider.cargarData();

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapShot) {
        return ListView(
          children: _listaItem(snapShot.data, context),
        );
      },
    );
  }

  _listaItem(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(
          Icons.arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);

/*           final route = MaterialPageRoute(builder: (context) {
            return AlertPage();
          });
          Navigator.push(context, route); */
        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
