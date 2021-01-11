import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:image_picker/image_picker.dart';

class ImageSelectPage extends StatefulWidget {
  @override
  _ImageSelectPageState createState() => _ImageSelectPageState();
}

class _ImageSelectPageState extends State<ImageSelectPage> {
  List<CameraDescription> _cameras;
  CameraController _controller;
  Future<void> _initializeControllerFuture;
  bool isFrontCamera = false;

  @override
  Future<void> didChangeDependencies() async {
    WidgetsFlutterBinding.ensureInitialized();
    _cameras = await availableCameras();
    _controller = CameraController(_cameras.first, ResolutionPreset.medium);
    _initializeControllerFuture = _controller.initialize();
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_initializeControllerFuture == null)
      return Container(
        child: Text('Pls wait'),
      );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Take a picture ...'),
      ),
      extendBodyBehindAppBar: true,
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return _CameraView(
              controller: _controller,
              hasMultipleCameras: _cameras.length > 1,
              onSwitchCamera: () {
                isFrontCamera = !isFrontCamera;
                _controller = CameraController(
                    isFrontCamera ? _cameras[1] : _cameras.first,
                    ResolutionPreset.medium);
                _initializeControllerFuture = _controller.initialize();
                setState(() {});
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class _CameraView extends StatelessWidget {
  final CameraController controller;
  final VoidCallback onSwitchCamera;
  final bool hasMultipleCameras;

  const _CameraView({
    Key key,
    this.controller,
    this.onSwitchCamera,
    this.hasMultipleCameras,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        CameraPreview(controller),
        Material(
          color: Colors.black.withAlpha(78),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 45.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () async {
                    await ImagePicker().getImage(source: ImageSource.gallery);
                  },
                  icon: Icon(
                    Icons.photo_library,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                  iconSize: 56,
                  splashColor: Colors.pink,
                  tooltip: 'Take picture',
                  onPressed: () {},
                ),
                if (hasMultipleCameras)
                  IconButton(
                    onPressed: onSwitchCamera,
                    icon: Icon(
                      Icons.switch_camera,
                      color: Colors.white,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
