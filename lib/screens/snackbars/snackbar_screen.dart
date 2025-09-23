import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _Body();
  }
}

class _Body extends StatelessWidget {

    void showCustomSnackbar( BuildContext context ) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snakback = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snakback);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('Hola Mundo'),
                  action: SnackBarAction(
                    label: 'Ok!',
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Mostrar Snackbar'),
            ),
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Este es un dialogo de ejemplo'),
                  ],
                );
              },
              child: const Text('Mostrar Dialogo'),
            ),

            FilledButton.tonal(onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Estas seguro?'),
                  content: const Text('Cuidado con lo que haces'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancelar'),
                    ),
                    FilledButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Aceptar'),
                    ),
                  ],
                ),
              );
            }, child: const Text('Mostrar Dialogo Alerta')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showCustomSnackbar(context),
        child: const Icon(Icons.arrow_back_ios_new_outlined),
      ),
    );
  }
}