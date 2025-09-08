import 'package:all_widgets/config/tipos%20de%20widget/tipoWidgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Widgets'),
      ),
      body: _ListadoOpciones(),
    );
  }
}

class _ListadoOpciones extends StatelessWidget {
  const _ListadoOpciones({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: _DetalleListadoOpciones(),
    );
  }
}

class _DetalleListadoOpciones extends StatelessWidget {
  const _DetalleListadoOpciones({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tipoWidgets.length,
      itemBuilder: (context, index) {
        final item = tipoWidgets[index];
        return ListTile(
          leading: Icon(item.icon),
          trailing: Icon( Icons.arrow_forward_ios_outlined),
          title: Text(item.title),
          subtitle: Text(item.description),
          onTap: () {
            context.push(item.link);
          },
        );
      },
    );
  }
}