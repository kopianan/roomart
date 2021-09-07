import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_downloader/image_downloader.dart';
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
