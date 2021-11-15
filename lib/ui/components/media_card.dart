
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:menu_deliver_app/view_model/view_model.dart';

import '../../flavors.dart';

class MediaCard extends ConsumerStatefulWidget {
  final Size size;

  MediaCard(this.size);

  @override
  ConsumerState<MediaCard> createState() => _MediaCardState();
}

class _MediaCardState extends ConsumerState<MediaCard> {
  ViewModel _viewModel = ViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.setRef(ref);
  }

  List<Widget> imageSliders(BuildContext context) {
    //ref.watch(newArrivalMenus).map((item)
    return _viewModel.newArrivalMenus
        .map<Widget>((item) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/menu_view');
              },
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: widget.size.width / 3,
                  width: widget.size.width / 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 1.0,
                        blurRadius: 1.0,
                        offset: Offset(3, 3),
                      ),
                    ],
                    /* ここまでを追加しました */
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(F.s3Url + item.thumbPath.toString(),
                        fit: BoxFit.fitHeight),
                  ),
                ),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: imageSliders(context),
      ),
    );
  }
}
