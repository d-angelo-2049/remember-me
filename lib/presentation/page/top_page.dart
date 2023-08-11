import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:rememberme/presentation/navigation/page_nagivation.dart';
import 'package:rememberme/presentation/page/danger_list_page.dart';
import 'package:rememberme/presentation/page/shoot_page.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key, required this.camera});

  final CameraDescription camera;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('FoodLoss:RememberMe'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    PageNavigation.push(
                        context,
                        ShootPage(
                          camera: camera,
                        ));
                    print('navigate to shoot page');
                  },
                  child: const Text(
                    '忘れそうなものを登録しよう',
                    style: TextStyle(color: Colors.blue, fontSize: 20.0),
                  )),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  PageNavigation.push(context, const DangerListPage());
                  print('navigate to danger list page');
                },
                child: const Text(
                  'もうそろそろ食べないといけないもの',
                  style: TextStyle(color: Colors.blue, fontSize: 20.0),
                ),
              ),
            ],
          ),
        ));
  }
}
