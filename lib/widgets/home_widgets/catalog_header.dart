import 'package:flutter/cupertino.dart';

import '../theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Catalog App".text.xl5.bold.color(context.theme.accentColor).make(),
          "Trending Products".text.xl2.make(),
        ],
      ),
    );
  }
}
