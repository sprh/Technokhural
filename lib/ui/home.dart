import 'package:flutter/material.dart';
import 'package:technokhural_flutter_demo/models/ui_item.dart';
import 'package:technokhural_flutter_demo/ui/ui_builder.dart';

import '../api/api.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<StatefulWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late final _api = Api();
  UIItem? ui;

  @override
  void initState() {
    super.initState();
    _api.getUI().then((value) => setState(() => ui = value));
  }

  @override
  Widget build(BuildContext context) {
    if (ui != null) {
      return Center(child: UIBuilder(ui!));
    }

    return const Center(child: CircularProgressIndicator());
  }
}
