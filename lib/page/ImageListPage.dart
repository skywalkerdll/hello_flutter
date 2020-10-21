import 'package:flutter/material.dart';
import '../model/post.dart';
import '../page/PhotoViewSimpleScreen .dart';

class ImageListPage extends StatelessWidget {
  Widget _listbuilder(BuildContext context, int index) {
    return Container(
      // color: Colors.red,
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          InkWell(
            child: Image.network(
              posts[index].imageUrl,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;

                return Container(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes
                        : null,
                  ),
                );
              },
            ),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => PhotoViewSimpleScreen(
                          imageProvider: NetworkImage(posts[index].imageUrl),
                          heroTag: 'simple',
                        )),
              );
            },
          ),
          SizedBox(height: 16),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.headline6,
          ),
          // Text(
          //   posts[index].author,
          //   style: Theme.of(context).textTheme.subtitle1,
          // ),

          // RaisedButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       new MaterialPageRoute(
          //           builder: (context) => PhotoViewSimpleScreen(
          //                 imageProvider: NetworkImage(posts[index].imageUrl),
          //                 heroTag: 'simple',
          //               )),
          //     );
          //   },
          //   child: Text("预览"),
          // )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemBuilder: _listbuilder,
        itemCount: posts.length,
      ),
    );
  }
}
