import 'package:flutter/widgets.dart';

import '../api/api.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<StatefulWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late final _api = Api();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Flutter technokhural demo'),
    );
  }
}
