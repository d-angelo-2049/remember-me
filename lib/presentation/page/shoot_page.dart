import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:rememberme/presentation/navigation/page_nagivation.dart';
import 'package:rememberme/presentation/page/register_item_page.dart';

class ShootPage extends StatefulWidget {
  const ShootPage({super.key, required this.camera});

  final CameraDescription camera;

  @override
  State<StatefulWidget> createState() {
    return _ShootPageState();
  }
}

class _ShootPageState extends State<ShootPage> {
  late CameraController _controller;

  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    prepare();
  }

  Future<void> prepare() async {
    _controller = CameraController(widget.camera, ResolutionPreset.max,
        imageFormatGroup: ImageFormatGroup.bgra8888);
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('忘れそうなものを撮影しよう'),
      ),
      body: FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // もしFutureが完了していたら、プレビューを表示する
              return CameraPreview(_controller);
            } else {
              // それ以外の場合、ローディングインジゲーターを表示する
              return const Center(child: CircularProgressIndicator());
            }
          }),
      floatingActionButton: FloatingActionButton(
        child: GestureDetector(
          onTap: () async {
            // shoot
            final image = await _controller.takePicture();
            if (context.mounted) {
              PageNavigation.push(
                  context,
                  RegisterItemPage(
                    imagePath: image.path,
                  ));
            }
          },
          child: const Icon(Icons.add_a_photo),
        ),
        onPressed: () {},
      ),
      // NEXT: ボタンの処理を追加
    );
  }
}
