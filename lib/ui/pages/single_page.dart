import 'package:flutter/material.dart';
import 'package:xperiences/ui/widgets/icon_header.dart';

class SinglePage extends StatelessWidget {
  const SinglePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [IconHeader(label: 'Detalles del destino')],
      ),
    );
  }
}
