import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../routes/app_router.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "マップ機能のテスト実装",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(MapRoute());
              },
              child: const Text("マップへ"),
            )
          ],
        ),
      ),
    );
  }
}
