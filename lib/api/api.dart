import 'dart:convert';

import 'package:http/http.dart';
import 'package:technokhural_flutter_demo/models/ui_item.dart';

class Api {
  late final uri = Uri.parse('http://158.160.16.111:8000/');

  Future<UIItem?> getUI() async {
    final ui = await get(uri);
    if (ui.statusCode == 200) {
      final json = jsonDecode(ui.body) as Map<String, dynamic>;
      return UIItem.fromJson(json);
    }
    return null;
  }
}
