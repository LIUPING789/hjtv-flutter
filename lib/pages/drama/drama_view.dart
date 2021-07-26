import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';

import 'drama_logic.dart';
import 'drama_state.dart';

class DramaPage extends StatefulWidget {
  @override
  _DramaPageState createState() => _DramaPageState();
}

class _DramaPageState extends State<DramaPage> {
  final logic = Get.find<DramaLogic>();
  final DramaState state = Get.find<DramaLogic>().state;

  @override
    Widget build(BuildContext context) {
      return GetBuilder<ThemeController>(
        builder: (_) => Scaffold(
          body: Text(
            '我是Drama页',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      );
    }

  @override
  void dispose() {
    Get.delete<DramaLogic>();
    super.dispose();
  }
}