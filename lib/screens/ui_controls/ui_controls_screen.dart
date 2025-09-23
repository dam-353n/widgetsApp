import 'package:flutter/material.dart';


class UicontrolsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UicontrolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: _Body(),
    );
  }
}

enum LanguageProgramming { dart, kotlin, swift, javascript }

class _Body extends StatefulWidget {

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {

  bool isActive = false;
  bool? isChecked;
  LanguageProgramming selectedLanguage = LanguageProgramming.dart;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
          title: const Text('Activar notificaciones'),
          subtitle: const Text('Permitir notificaciones push'),
          value: isActive,
          onChanged: (value) {
            setState(() {
              isActive = value;
            });
          },
        ),
        ExpansionTile(
          title: const Text('¿Que es Flutter?'),
          subtitle: const Text('Conoce mas sobre Flutter'),
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                  'Flutter es un framework de desarrollo de aplicaciones móviles, web y de escritorio creado por Google. Permite crear interfaces de usuario nativas y atractivas utilizando un único código base.'),
            )
          ],
        ),
        CheckboxListTile(
          title: const Text('Acepto los terminos y condiciones'),
          value: isChecked ?? false,
          onChanged: (value) {
            setState(() {
              isChecked = value;
            });
          },
        ),
        ExpansionTile(title: Text('Selecciona un lenguaje de programacion'), children: [
          RadioListTile<LanguageProgramming>(
            title: const Text('Dart'),
            value: LanguageProgramming.dart,
            groupValue: selectedLanguage,
            onChanged: (value) {
              setState(() {
                selectedLanguage = value!;
              });
            },
          ),
          RadioListTile<LanguageProgramming>(
            title: const Text('Kotlin'),
            value: LanguageProgramming.kotlin,
            groupValue: selectedLanguage,
            onChanged: (value) {
              setState(() {
                selectedLanguage = value!;
              });
            },
          ),
          RadioListTile<LanguageProgramming>(
            title: const Text('Swift'),
            value: LanguageProgramming.swift,
            groupValue: selectedLanguage,
            onChanged: (value) {
              setState(() {
                selectedLanguage = value!;
              });
            },
          ),
          RadioListTile<LanguageProgramming>(
            title: const Text('JavaScript'),
            value: LanguageProgramming.javascript,
            groupValue: selectedLanguage,
            onChanged: (value) {
              setState(() {
                selectedLanguage = value!;
              });
            },
          ),
        ]),
        const Divider(),
        RadioListTile<int>(
          title: const Text('Opcion 1'),
          value: 1,
          groupValue: 1,
          onChanged: (value) {},
        ),
        RadioListTile<int>(
          title: const Text('Opcion 2'),
          value: 2,
          groupValue: 1,
          onChanged: (value) {},
        ),
      ],
    );
  }
}