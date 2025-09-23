import 'dart:math';

import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {
    'elevation': 0.0,
    'label': 'Elevation 0',
  },
  {
    'elevation': 1.0,
    'label': 'Elevation 1',
  },
  {
    'elevation': 2.0,
    'label': 'Elevation 2',
  },
  {
    'elevation': 3.0,
    'label': 'Elevation 3',
  },
  {
    'elevation': 4.0,
    'label': 'Elevation 4',
  },
  {
    'elevation': 5.0,
    'label': 'Elevation 5',
  },
];


class CardScreen extends StatelessWidget {
  static const name = 'card_screen';
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: _CardsBody(),
    );
  }
}

class _CardsBody extends StatelessWidget {
  const _CardsBody();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cards.length,
      itemBuilder: (context, index) {
        final card = cards[index];
        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10,),
              _CardsType1(card: card),
              const SizedBox(height: 10,),
              _CardsType2(card: card),
              const SizedBox(height: 10,),
              _CardsType3(card: card),
              const SizedBox(height: 10,),
            ],
          ),
        );

      },
    );
  }
}

class _CardsType1 extends StatelessWidget {
  const _CardsType1({
    required this.card,
  });

  final Map<String, dynamic> card;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: card['elevation'],
      child: ListTile(
        leading: const Icon(Icons.card_membership_outlined),
        title: Text(card['label']),
        subtitle: Text('Elevation: ${card['elevation']}'),
      ),
    );
  }
}


class _CardsType2 extends StatelessWidget {
  const _CardsType2({
    required this.card,
  });

  final Map<String, dynamic> card;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      elevation: card['elevation'],
      child: ListTile(
        leading: const Icon(Icons.card_membership_outlined),
        title: Text(card['label']),
        subtitle: Text('Elevation: ${card['elevation']}'),
      ),
    );
  }
}

class _CardsType3 extends StatelessWidget {
  const _CardsType3({
    required this.card,
  });

  final Map<String, dynamic> card;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,

      elevation: card['elevation'],
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${Random().nextInt(100)}/300/100',
            height: 120,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          ListTile(
            leading:  Icon(Icons.card_membership_outlined, color: Theme.of(context).colorScheme.primary,),
            title: Text(card['label'], style:  TextStyle(color: Theme.of(context).colorScheme.primary),),
            subtitle: Text('Elevation: ${card['elevation']}', style: TextStyle(color: Theme.of(context).colorScheme.primary),),
          ),
        ],
      )
    );
  }
}