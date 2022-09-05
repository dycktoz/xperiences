import 'package:flutter/material.dart';
import 'package:xperiences/ui/widgets/climate_card.dart';
import 'package:xperiences/ui/widgets/icon_header.dart';
import 'package:xperiences/ui/widgets/labels_style.dart';
import 'package:xperiences/ui/widgets/notice_card.dart';

class WelcomeHomePage extends StatelessWidget {
  final String nombre;
  final dynamic data;
  const WelcomeHomePage({Key? key, required this.nombre, this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return data == null
        ? SizedBox(
            child: Center(child: CircularProgressIndicator()),
          )
        : SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                IconHeader(isHome: true, label: nombre, onPressed: () {}),
                LabesStyleInput(
                  fontwB: true,
                  label: data!.name,
                  fontS: 17,
                ),
                ClimateCard(
                    label: data!.name,
                    climatemp: data!.main.temp,
                    label2: data!.sys.country),
                LabesStyle(
                  fontwB: true,
                  label: data!.name,
                  fontS: 17,
                ),
                LabesStyle2(
                  label:
                      'Actualmente la gente esta comentando sobre estas noticias',
                  fontwW: true,
                  fontS: 17,
                ),
                NoticeCard(
                  assetimg: 'assets/image/1.jpg',
                  label: 'Laboris deserunt ex laboris esse adipisicing.',
                  label1:
                      'Consectetur nulla id Lorem cillum quis sint dolor reprehenderit irure Lorem.',
                ),
                NoticeCard(
                  assetimg: 'assets/image/2.jpg',
                  label:
                      'Aliqua anim cillum exercitation sunt culpa enim sint elit.',
                  label1:
                      'Anim officia non fugiat quis id pariatur aliqua dolor ullamco nostrud Lorem nostrud.',
                ),
                NoticeCard(
                  assetimg: 'assets/image/3.jpg',
                  label:
                      'Elit cupidatat duis ea eiusmod sit voluptate excepteur ad in occaecat.',
                  label1:
                      'Anim irure est cillum deserunt in adipisicing in fugiat velit.',
                ),
                NoticeCard(
                  assetimg: 'assets/image/4.jpg',
                  label: 'Ex nulla duis incididunt cupidatat dolor velit.',
                  label1: 'Non sunt ex duis irure.',
                ),
                NoticeCard(
                  assetimg: 'assets/image/1.jpg',
                  label: 'Veniam elit pariatur cillum labore.',
                  label1: 'Nulla qui deserunt veniam culpa laboris.',
                ),
              ],
            ),
          );
  }
}
