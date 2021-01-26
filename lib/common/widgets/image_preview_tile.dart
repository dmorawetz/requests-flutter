import 'package:flutter/material.dart';
import 'package:requests/common/views/image_detail_page.dart';

class ImagePreviewTile extends StatelessWidget {
  final List<String> urls;
  final Function(String) onRemove;

  const ImagePreviewTile({Key key, @required this.urls, this.onRemove})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.image),
      title: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var url in urls)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: url,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Container(
                          color: Colors.black26,
                          height: 150,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ImageDetailPage(
                                    url: url,
                                  ),
                                ),
                              );
                            },
                            child: Image.network(
                              url,
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                  ),
                  if (onRemove != null)
                    IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.grey,
                      ),
                      onPressed: () => onRemove(url),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
