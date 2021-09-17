import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewPage extends StatefulWidget {
  static const String TAG = '/photo_view_page';
  const PhotoViewPage({Key? key}) : super(key: key);

  @override
  _PhotoViewPageState createState() => _PhotoViewPageState();
}

class _PhotoViewPageState extends State<PhotoViewPage> {
  late String url;
  @override
  void initState() {
    this.url = Get.arguments as String;
    super.initState();
    _requestPermission();
  }

  _requestPermission() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage,
    ].request();

    final info = statuses[Permission.storage].toString();
    print(info);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () async {
              try {
                // Saved with this method.
                var imageId = await ImageDownloader.downloadImage(url);
                if (imageId == null) {
                  return;
                }

                // Below is a method of obtaining saved image information.
                var fileName = await ImageDownloader.findName(imageId);
                var path = await ImageDownloader.findPath(imageId);
                var size = await ImageDownloader.findByteSize(imageId);
                var mimeType = await ImageDownloader.findMimeType(imageId);

                Get.showSnackbar(
                  GetBar(
                    message: "Image downloaded" + path.toString(),
                    duration: Duration(seconds: 4),
                    title: "Download Success",
                  ),
                );
              } on PlatformException catch (error) {
                print(error);
              }
            },
            icon: Icon(Icons.download_for_offline),
          )
        ],
      ),
      body: Container(
          child: PhotoView(
        imageProvider: NetworkImage(url),
      )),
    );
  }
}
