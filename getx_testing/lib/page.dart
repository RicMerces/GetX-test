import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:getx_testing/controller.dart';

class MyHomePage extends StatelessWidget {
  final Controller myController = Get.find<Controller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo Get'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Valor do número: ${myController.numero.value}')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                myController.addNumero();
              },
              child: Text('Incrementar'),
            ),
          ],
        ),
      ),
    );
  }
}
