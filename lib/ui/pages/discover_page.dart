import 'package:flutter/material.dart';
import 'package:xperiences/models/climate_response.dart';
import 'package:xperiences/ui/widgets/discover_card.dart';
import 'package:xperiences/ui/widgets/icon_header.dart';

class DiscoverPage extends StatelessWidget {
  final ClimateResponse? data;
  const DiscoverPage({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = data!.name;
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          IconHeader(
              onPressed: () {},
              label: 'Descubre tus Destinos Favoritos en $name'),
          DiscoverCard(
              ontap: () {},
              assetimg: 'assets/image/4.jpg',
              label1: 'Sunt ea exercitation mollit est Lorem .',
              label: 'Fugiat enim nostrud nisi .'),
          DiscoverCard(
              ontap: () {},
              assetimg: 'assets/image/3.jpg',
              label1: 'Minim est esse excepteur quis tempor ',
              label: 'Fugiat est dolor Lorem ad eiusmod '),
          DiscoverCard(
              ontap: () {},
              assetimg: 'assets/image/2.jpg',
              label1: 'Dolore tempor in cillum quis in veniam.',
              label: 'Cupidatat esse enim do ex duis '),
          DiscoverCard(
              ontap: () {},
              assetimg: 'assets/image/1.jpg',
              label1: 'Sunt commodo aute consequat in excepteur irure',
              label: 'Dolor consequat id commodo ut nisi.'),
        ]));
  }
}
