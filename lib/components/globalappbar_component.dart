import 'package:flutter/material.dart';

class GlobalAppbarComponent extends StatelessWidget
    implements PreferredSizeWidget {
  final Text? tittle;
  const GlobalAppbarComponent({Key? key, this.tittle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.pink,
      title: tittle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
