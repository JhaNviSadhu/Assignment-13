import 'package:cupertino_widgets_hw/model/model_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContextMenuDemo extends StatelessWidget {
  final String title;
  const ContextMenuDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ImageModel> imagemodel = getImages();
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
      ),
      child: Center(
        child: GridView.builder(
          itemCount: imagemodel.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return CupertinoContextMenu(
              actions: [
                CupertinoContextMenuAction(
                  child: const Text('Save'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoContextMenuAction(
                  isDestructiveAction: true,
                  child: const Text('Delete'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
              child: Image.asset(
                imagemodel[index].img,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
